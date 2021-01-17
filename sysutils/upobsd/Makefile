# $OpenBSD: Makefile,v 1.6 2021/01/17 17:33:42 semarie Exp $

COMMENT =	download, verify and patch bsd.rd image

V =		1.2
DISTNAME =	upobsd-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/semarie/upobsd

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/semarie/upobsd/releases/download/${V}/

MAKE_ENV =	BINDIR=${LOCALBASE}/bin \
		MANDIR=${LOCALBASE}/man/man

NO_BUILD =	Yes
PKG_ARCH =	*

NO_TEST =	Yes

.include <bsd.port.mk>
