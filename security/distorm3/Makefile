# $OpenBSD: Makefile,v 1.3 2014/09/27 16:53:53 miod Exp $

COMMENT =		powerful disassembler library for x86/amd64

DISTNAME =		distorm3
PKGNAME =		${DISTNAME}-3
REVISION=		0

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
