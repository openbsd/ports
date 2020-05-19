# $OpenBSD: Makefile,v 1.6 2020/05/19 13:22:57 sthen Exp $

COMMENT =	simple CalDAV calendar server

MODPY_EGG_VERSION = 2.1.12
DISTNAME =	Radicale-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	productivity net

HOMEPAGE =	https://radicale.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS = Yes
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR}>=2.7.3 \
		security/py-passlib${MODPY_FLAVOR} \
		textproc/py-vobject${MODPY_FLAVOR}

NO_TEST =	Yes
SUBST_VARS +=	VARBASE

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/radicale/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/radicale
	${INSTALL_DATA} ${WRKSRC}/{COPYING,*.md} ${PREFIX}/share/doc/radicale/
	${SUBST_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/radicale/config
	${INSTALL_DATA} ${WRKSRC}/{logging,rights} ${PREFIX}/share/examples/radicale/
	touch ${PREFIX}/share/examples/radicale/log

.include <bsd.port.mk>
