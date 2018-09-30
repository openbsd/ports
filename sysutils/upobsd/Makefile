# $OpenBSD: Makefile,v 1.4 2018/09/30 15:33:57 kn Exp $

COMMENT =	download, verify and patch bsd.rd image

V =		1.1
DISTNAME =	upobsd-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://bitbucket.org/semarie/upobsd

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c

MASTER_SITES =		https://bitbucket.org/semarie/upobsd/downloads/

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST =		Yes

.include <bsd.port.mk>
