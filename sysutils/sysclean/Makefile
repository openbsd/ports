# $OpenBSD: Makefile,v 1.13 2017/06/21 15:16:31 ajacoutot Exp $

COMMENT =	list obsolete files between OpenBSD upgrades

GH_ACCOUNT =	semarie
GH_PROJECT =	sysclean
GH_TAGNAME =	2.3

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/sysclean/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

NO_BUILD =		Yes
PKG_ARCH =		*

TEST_TARGET =		regress

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sysclean
	${INSTALL_DATA} ${WRKSRC}/sysclean.ignore ${PREFIX}/share/examples/sysclean

.include <bsd.port.mk>
