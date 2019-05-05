# $OpenBSD: Makefile.inc,v 1.2 2019/05/05 15:44:12 danj Exp $

DIST_SUBDIR=	spyder

CATEGORIES ?=	devel/spyder

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
