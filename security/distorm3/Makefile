# $OpenBSD: Makefile,v 1.4 2015/09/19 20:27:43 rpointel Exp $

COMMENT =		powerful disassembler library for x86/amd64

MODPY_EGG_VERSION =	3.3.0
DISTNAME =		distorm3-${MODPY_EGG_VERSION}

CATEGORIES =		security

HOMEPAGE =		https://github.com/gdabah/distorm/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

GH_ACCOUNT =		gdabah
GH_PROJECT =		distorm
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python

NO_TEST =		Yes

.include <bsd.port.mk>
