from wafer.talks.models import Talk
import csv

headings = [
    "talk",
    "link",
    "talk_type",
    "review_count",
    "status",
    "abstract",
    "notes",
    "private_notes",
    "reviewers",
    "average_review_score",
]


def talk_to_csv_line(talk):
    return [
        str(talk),
        f"https://cfp-2023.djangocon.africa/admin/talks/talk/{talk.talk_id}/change/",
        talk.talk_type,
        talk.review_count,
        talk.status,
        talk.abstract,
        talk.notes,
        talk.private_notes,
        "\n".join([o.reviewer.username for o in talk.reviews.all()]),
        talk.review_score,
    ]


with open("talks.csv", "w") as f:
    writer = csv.writer(f)
    writer.writerow(headings)
    for talk in Talk.objects.all():
        writer.writerow(talk_to_csv_line(talk))
