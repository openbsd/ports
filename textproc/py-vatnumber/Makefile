# $OpenBSD: Makefile,v 1.1.1.1 2011/06/13 12:51:05 ajacoutot Exp $

COMMENT =		Python module to validate VAT numbers

MODPY_EGG_VERSION =	0.9
DISTNAME =		vatnumber-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		http://vatnumber.googlecode.com/

MAINTAINER =		Christian Rueger <cr+openbsd@rueger-net.de>

# GPLv3
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}files/

MODULES =		lang/python

RUN_DEPENDS =		devel/py-suds

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
