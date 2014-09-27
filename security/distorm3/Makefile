# $OpenBSD: Makefile,v 1.2 2014/09/27 09:16:54 landry Exp $

COMMENT =		powerful disassembler library for x86/amd64
BROKEN-powerpc =	src/config.h:147: error: duplicate 'static'

DISTNAME =		distorm3
PKGNAME =		${DISTNAME}-3

CATEGORIES =		security

HOMEPAGE =		https://code.google.com/p/distorm/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =		https://distorm.googlecode.com/files/

EXTRACT_SUFX =		.zip

MODULES =		lang/python

NO_TEST =		Yes

.include <bsd.port.mk>
