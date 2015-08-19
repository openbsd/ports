# $OpenBSD: Makefile,v 1.12 2015/08/19 20:13:59 sthen Exp $

COMMENT=		simple Python framework for web-based applications

MODPY_EGG_VERSION=	2.8
REVISION=		0
DISTNAME=		Quixote-${MODPY_EGG_VERSION}
PKGNAME=		py-quixote-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://quixote.ca/
MASTER_SITES=		${HOMEPAGE}releases/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

TEST_DEPENDS=	www/twill \
    			devel/py-nose

# Clean up root-owned files.
post-install:
	rm -fr ${WRKSRC}/Quixote.egg-info
	rm -fr ${WRKSRC}/Quixote-$V.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-quixote
.for i in LICENSE.txt doc/*txt
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/py-quixote
.endfor

.include <bsd.port.mk>
