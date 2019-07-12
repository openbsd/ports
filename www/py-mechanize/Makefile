# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:02 sthen Exp $

COMMENT=		stateful programmatic web browsing module

MODPY_EGG_VERSION=	0.3.5
DISTNAME=		mechanize-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		http://wwwsearch.sourceforge.net/mechanize/

# BSD or Zope Public License v2.1
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes

TEST_DEPENDS=	devel/py-twisted

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-mechanize
	cd ${WRKSRC}/examples && umask 022 && pax -rw . \
		 ${PREFIX}/share/examples/py-mechanize

do-test: fake
	cd ${WRKSRC} && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/mechanize" ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
