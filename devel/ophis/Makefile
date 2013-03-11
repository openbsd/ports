# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:12 espie Exp $

COMMENT =		65xx-series cross-assembler

MODPY_EGG_VERSION =	1.0
DISTNAME =		Ophis-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://hkn.eecs.berkeley.edu/~mcmartin/ophis/

# BSD
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ophis
	${INSTALL_DATA} ${WRKDIST}/doc/ophismanual.pdf ${PREFIX}/share/doc/ophis

.include <bsd.port.mk>
