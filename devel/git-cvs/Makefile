# $OpenBSD: Makefile,v 1.1.1.1 2013/05/16 12:45:12 dcoppa Exp $

COMMENT =	import changesets from CVS into Git

MODPY_EGG_VERSION = 0.0.1

DISTNAME =	git-cvs-0.0.2012.01.28
CATEGORIES =	devel

HOMEPAGE =	https://github.com/ustuehler/git-cvs

MAINTAINER =	Florian Obser <florian@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	http://sha256.net/git-cvs/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

MODPY_BADEGGS =	git_cvs

MODPY_ADJ_FILES = scripts/git-cvs

RUN_DEPENDS=	devel/git \
		devel/py-rcsparse

PKG_ARCH =	*

NO_TEST =	Yes

.include <bsd.port.mk>
