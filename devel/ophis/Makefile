# $OpenBSD: Makefile,v 1.3 2019/07/12 20:44:43 sthen Exp $

COMMENT =		65xx-series cross-assembler

MODPY_EGG_VERSION =	1.0
DISTNAME =		Ophis-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://hkn.eecs.berkeley.edu/~mcmartin/ophis/

# BSD
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ophis
	${INSTALL_DATA} ${WRKDIST}/doc/ophismanual.pdf ${PREFIX}/share/doc/ophis

.include <bsd.port.mk>
