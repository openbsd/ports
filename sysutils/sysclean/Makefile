# $OpenBSD: Makefile,v 1.18 2018/09/15 08:00:06 ajacoutot Exp $

COMMENT =	list obsolete files between OpenBSD upgrades

V =		2.7
DISTNAME =	sysclean-${V}

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/sysclean/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

MASTER_SITES =	https://github.com/semarie/sysclean/releases/download/${V}/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

NO_BUILD =		Yes
PKG_ARCH =		*

TEST_TARGET =		regress

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sysclean
	${INSTALL_DATA} ${WRKSRC}/sysclean.ignore ${PREFIX}/share/examples/sysclean

.include <bsd.port.mk>
