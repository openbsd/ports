# $OpenBSD: Makefile,v 1.22 2014/09/17 09:13:13 ajacoutot Exp $

COMMENT =	Python interface to sendmail milter API

MODPY_EGG_VERSION = 0.9.8
DISTNAME =	pymilter-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
REVISION =	1
CATEGORIES =	mail

HOMEPAGE =	http://www.bmsi.com/python/milter.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	milter ${MODPY_WANTLIB} pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=pymilter/}

MODULES =	lang/python

CFLAGS +=	-I${LOCALBASE}/include

LIB_DEPENDS =	mail/sendmail,-libmilter
TEST_DEPENDS = ${RUN_DEPENDS} \
		  net/py-dns

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-milter
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-milter
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-milter
	${INSTALL_DATA} ${WRKSRC}/sample.py ${PREFIX}/share/examples/py-milter

do-test: fake
	@cd ${WRKSRC} && ${MAKE_ENV} \
	    PYTHONPATH=${WRKINST}${MODPY_SITEPKG} ${MODPY_BIN} ./test.py

.include <bsd.port.mk>
