COMMENT =	simple CalDAV calendar server

MODPY_DISTV =	2.1.12
DISTNAME =	Radicale-${MODPY_DISTV}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	productivity net
REVISION =	8

HOMEPAGE =	https://radicale.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	devel/py-dateutil>=2.7.3 \
		devel/py-setuptools \
		security/py-passlib \
		textproc/py-vobject

NO_TEST =	Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/radicale/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/radicale
	${INSTALL_DATA} ${WRKSRC}/{COPYING,*.md} ${PREFIX}/share/doc/radicale/
	${SUBST_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/radicale/config
	${INSTALL_DATA} ${WRKSRC}/{logging,rights} ${PREFIX}/share/examples/radicale/
	touch ${PREFIX}/share/examples/radicale/log

.include <bsd.port.mk>
