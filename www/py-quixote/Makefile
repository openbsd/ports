# $OpenBSD: Makefile,v 1.2 2009/03/24 17:55:23 jasper Exp $

COMMENT=		simple Python framework for web-based applications

V=			2.5
DISTNAME=		Quixote-$V
PKGNAME=		py-quixote-$Vp0

CATEGORIES=		www

HOMEPAGE=		http://www.quixote.ca/
MASTER_SITES=		${HOMEPAGE}releases/

MAINTAINER=		Will Maier <willmaier@ml1.net>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	::www/twill \
    			::devel/py-nose

# Clean up root-owned files.
post-install:
	rm -fr ${WRKSRC}/Quixote.egg-info
	rm -fr ${WRKSRC}/Quixote-$V.egg-info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-quixote
.for i in LICENSE.txt doc/*txt
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/py-quixote
.endfor

.include <bsd.port.mk>
