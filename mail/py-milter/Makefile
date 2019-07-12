# $OpenBSD: Makefile,v 1.25 2019/07/12 20:47:36 sthen Exp $

COMMENT =	Python interface to sendmail milter API

MODPY_EGG_VERSION = 1.0
DISTNAME =	pymilter-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	mail

HOMEPAGE =	http://www.bmsi.com/python/milter.html

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =	milter ${MODPY_WANTLIB} pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES =	lang/python

CFLAGS +=	-I${LOCALBASE}/include

LIB_DEPENDS =	mail/sendmail,-libmilter
TEST_DEPENDS =	net/py-dns

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-milter
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-milter
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-milter
	${INSTALL_DATA} ${WRKSRC}/sample.py ${PREFIX}/share/examples/py-milter

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
