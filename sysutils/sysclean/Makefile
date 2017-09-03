# $OpenBSD: Makefile,v 1.15 2017/09/03 14:12:25 danj Exp $

COMMENT =	list obsolete files between OpenBSD upgrades

GH_ACCOUNT =	semarie
GH_PROJECT =	sysclean
GH_TAGNAME =	2.5

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
