# $OpenBSD: Makefile,v 1.1.1.1 2011/10/14 22:29:57 bentley Exp $

COMMENT =		65xx-series cross-assembler

MODPY_EGG_VERSION =	1.0
DISTNAME =		Ophis-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =		devel

HOMEPAGE =		https://hkn.eecs.berkeley.edu/~mcmartin/ophis/

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${HOMEPAGE}

MODULES =		lang/python

NO_REGRESS =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ophis
	${INSTALL_DATA} ${WRKDIST}/doc/ophismanual.pdf ${PREFIX}/share/doc/ophis

.include <bsd.port.mk>
