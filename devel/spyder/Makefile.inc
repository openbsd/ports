# $OpenBSD: Makefile.inc,v 1.1.1.1 2018/08/29 23:17:16 sthen Exp $

DIST_SUBDIR=	spyder

CATEGORIES ?=	devel/spyder

MAINTAINER ?=	Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
