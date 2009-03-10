# $OpenBSD: Makefile,v 1.2 2009/03/10 22:21:48 espie Exp $

COMMENT =	Python module to handle audio metadata 

MODPY_EGG_VERSION = 1.15
DISTNAME =	mutagen-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}p0
CATEGORIES =	audio

HOMEPAGE =	http://code.google.com/p/quodlibet/wiki/Development/Mutagen

MASTER_SITES =	http://quodlibet.googlecode.com/files/

# GPLv2 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/python

REGRESS_TARGET =	test

do-regress:
	${_MODPY_CMD} ${REGRESS_TARGET}

.include <bsd.port.mk>
