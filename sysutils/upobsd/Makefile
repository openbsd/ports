# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:54 sthen Exp $

COMMENT =	download, verify and patch bsd.rd image

V =		1.1
DISTNAME =	upobsd-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://bitbucket.org/semarie/upobsd

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c

MASTER_SITES =		https://bitbucket.org/semarie/upobsd/downloads/

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST =		Yes

.include <bsd.port.mk>
