# $OpenBSD: Makefile,v 1.10 2016/10/06 16:45:20 landry Exp $

COMMENT =	help removing obsolete files between OpenBSD upgrades

GH_ACCOUNT =	semarie
GH_PROJECT =	sysclean
GH_TAGNAME =	1.9

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/sysclean/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MAKE_ENV =		BINDIR=${LOCALBASE}/bin \
			MANDIR=${LOCALBASE}/man/man

NO_BUILD =		Yes
NO_TEST =		Yes
PKG_ARCH =		*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sysclean
	${INSTALL_DATA} ${WRKSRC}/sysclean.ignore ${PREFIX}/share/examples/sysclean

.include <bsd.port.mk>
