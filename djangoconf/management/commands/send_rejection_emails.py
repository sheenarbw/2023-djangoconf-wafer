from django.core.management.base import BaseCommand

from wafer.talks.models import Talk, REJECTED
from django.core.mail import send_mail


message = """
Dear {name},

Thank you for your proposal to speak at DjangoCon Africa, and thank you for your patience while we have made our selection of talks and speakers.

I'm sorry to inform you that we are not able to accept your proposal, "{title}", as a full-length talk for this event. However we would welcome it in the form of a five-minute lightning talk. 

Please let us know if you are still planning to attend DjangoCon Africa, and we will happily reserve a slot for you to share a lightening talk.

Thanks again,
The DjangoCon Africa team
""".strip()


def send_rejection_email(talk):
    send_mail(
        "Your proposal to speak at DjangoCon Africa 2023",
        message.format(
            name=talk.corresponding_author.first_name
            or talk.corresponding_author.username,
            title=talk.title,
        ),
        "hello@djangocon.africa",
        [talk.corresponding_author.email],
        fail_silently=False,
    )


# class Command(BaseCommand):
#     def handle(self, *args, **options):
rejected = Talk.objects.filter(status=REJECTED).order_by("talk_id")

total = rejected.count()
for i, talk in enumerate(rejected):
    print(f"Sending email {i+1}/{total}. Talk_id: {talk.talk_id}")
    send_rejection_email(talk)
    print("...sent")
