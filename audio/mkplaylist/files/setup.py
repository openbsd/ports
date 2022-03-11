from distutils.core import setup
import sys, os

setup(
        name = "mkplaylist.py",
        version = "0.4.5",
        description = "creates playlists from directory trees",
        author = "Marc 'BlackJack' Rintsch",
        author_email = "marc@rintsch.de",
        license = "GPL",
        url = "http://bj.spline.de/software.html",
        scripts = ('mkplaylist',),
)
