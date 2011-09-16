# $OpenBSD: Makefile,v 1.2 2011/09/16 11:41:41 espie Exp $

COMMENT =		Python module to validate VAT numbers

MODPY_EGG_VERSION =	0.9
DISTNAME =		vatnumber-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION=	0

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
