# $OpenBSD: setup.py,v 1.1 2012/10/01 08:57:12 dcoppa Exp $

from youtube_dl import __version__

from setuptools import setup

setup(
	name = 'youtube-dl',
	version = __version__,
	description = 'YouTube downloader',
	url = 'http://rg3.github.com/youtube-dl/',
	author = 'Ricardo Garcia',
	author_email = 'public@rg3.name',
	keywords = ['YouTube', 'downloader'],
	license = 'Public Domain',
	packages = ['youtube_dl'],
	entry_points = {'console_scripts': ['youtube-dl = youtube_dl:main']}
)
