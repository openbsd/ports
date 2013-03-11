# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:48 espie Exp $

COMMENT=		simple Python framework for web-based applications

MODPY_EGG_VERSION=	2.6
DISTNAME=		Quixote-${MODPY_EGG_VERSION}
PKGNAME=		py-quixote-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		www

HOMEPAGE=		http://www.quixote.ca/
MASTER_SITES=		${HOMEPAGE}releases/

MAINTAINER=		Will Maier <wcmaier@openbsd.org>

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
