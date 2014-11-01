# $OpenBSD: Makefile,v 1.11 2014/11/01 16:21:32 benoit Exp $

COMMENT=		simple Python framework for web-based applications

MODPY_EGG_VERSION=	2.8
DISTNAME=		Quixote-${MODPY_EGG_VERSION}
PKGNAME=		py-quixote-${MODPY_EGG_VERSION}

CATEGORIES=		www

HOMEPAGE=		http://quixote.ca/
MASTER_SITES=		${HOMEPAGE}releases/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

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
