# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:48 espie Exp $

COMMENT=		stateful programmatic web browsing module

MODPY_EGG_VERSION=	0.2.5
DISTNAME=		mechanize-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		www

HOMEPAGE=		http://wwwsearch.sourceforge.net/mechanize/

# BSD or Zope Public License v2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

MASTER_SITES=		${HOMEPAGE}/src/

TEST_DEPENDS=	devel/py-twisted/web2

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-mechanize
	cd ${WRKSRC}/examples && umask 022 && pax -rw . \
		 ${PREFIX}/share/examples/py-mechanize

do-test: fake
	cd ${WRKSRC} && \
		env PYTHONPATH="${WRKINST}${MODPY_LIBDIR}/site-packages/mechanize" ${MODPY_BIN} test.py

.include <bsd.port.mk>
