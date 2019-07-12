# $OpenBSD: Makefile,v 1.37 2019/07/12 20:48:59 sthen Exp $

COMMENT =	simple CalDAV calendar server

MODPY_EGG_VERSION = 1.1.6
REVISION =	2
DISTNAME =	Radicale-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	productivity net

HOMEPAGE =	https://radicale.org/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	security/py-passlib${MODPY_FLAVOR}

NO_TEST =	Yes
SUBST_VARS +=	VARBASE

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/radicale/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radicale
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radicale
	cd ${WRKSRC}; ${INSTALL_DATA} COPYING NEWS.rst README \
	    ${PREFIX}/share/doc/radicale/
	${SUBST_DATA} ${WRKSRC}/config \
	    ${PREFIX}/share/examples/radicale/config
	${INSTALL_DATA} ${WRKSRC}/{logging,rights} \
	    ${PREFIX}/share/examples/radicale/
	touch ${PREFIX}/share/examples/radicale/log

.include <bsd.port.mk>
