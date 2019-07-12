# $OpenBSD: Makefile.inc,v 1.3 2019/07/12 20:46:01 sthen Exp $

DIST_SUBDIR=	spyder

CATEGORIES ?=	devel/spyder

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
