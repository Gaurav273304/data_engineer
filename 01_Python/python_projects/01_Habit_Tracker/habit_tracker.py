from datetime import datetime
from dataclasses import DateClass


@DateClass
class Habbit:
    name: str
    time: str
    remaining_days: str
