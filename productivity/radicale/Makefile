# $OpenBSD: Makefile,v 1.24 2015/04/02 14:21:16 jasper Exp $

COMMENT =	simple CalDAV calendar server

MODPY_EGG_VERSION = 0.9
DISTNAME =	Radicale-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:L}
CATEGORIES =	productivity net

HOMEPAGE =	http://radicale.org/

MAINTAINER =	Sergey Bronnikov <estetus@gmail.com>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_ADJ_FILES =	radicale.py
LIB_DEPENDS =		security/py-bcrypt

NO_TEST =		Yes

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/radicale/config.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/radicale
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/radicale
	cd ${WRKSRC}; ${INSTALL_DATA} COPYING NEWS.rst README \
	    ${PREFIX}/share/doc/radicale/
	${SUBST_DATA} ${WRKSRC}/config \
	    ${PREFIX}/share/examples/radicale/config
	${INSTALL_DATA} ${WRKSRC}/logging \
	    ${PREFIX}/share/examples/radicale/logging
	touch ${PREFIX}/share/examples/radicale/log

.include <bsd.port.mk>
