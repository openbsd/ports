COMMENT =	simple CalDAV calendar server

MODPY_DISTV =	1.1.6
REVISION =	10
DISTNAME =	Radicale-${MODPY_DISTV}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	productivity net

HOMEPAGE =	https://radicale.org/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	security/py-passlib

NO_TEST =	Yes

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
