# $OpenBSD: setup.py,v 1.1.1.1 2016/07/04 21:02:08 awolk Exp $

from setuptools import find_packages, setup
import sys, os

setup(
	name = "routersploit",
	version = "2.1.0",
	description = "The Router Exploitation Framework",
	author =  "Reverse Shell Security",
	author_email = "office@reverse-shell.com",
	license = "BSD",
	url = "https://github.com/reverse-shell/routersploit",
	packages=find_packages(),
	package_data = {'' : ['*.txt']},
	include_package_data = True,
	scripts = ('rsf.py',)
)

