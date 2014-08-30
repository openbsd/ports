# $OpenBSD: Makefile,v 1.14 2014/08/30 21:34:02 jasper Exp $

COMMENT=	strip cascading style sheets from webpages

DISTNAME=	decss-0.07
CATEGORIES=	www

MASTER_SITES=   ${HOMEPAGE}

HOMEPAGE=       http://www.pigdog.org/decss/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=   Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/DeCSS
	${INSTALL_SCRIPT} ${WRKSRC}/DeCSS ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_DATA} FAQ README decss-now.png \
           decss_mirror.html original_pigdog_article.txt \
	   ${PREFIX}/share/doc/DeCSS

.include <bsd.port.mk>
