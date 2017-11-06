# $OpenBSD: Makefile,v 1.16 2017/11/06 09:26:48 landry Exp $

COMMENT =	list obsolete files between OpenBSD upgrades

GH_ACCOUNT =	semarie
GH_PROJECT =	sysclean
GH_TAGNAME =	2.6

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/sysclean/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

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
