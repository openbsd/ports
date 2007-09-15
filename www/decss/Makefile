# $OpenBSD: Makefile,v 1.12 2007/09/15 20:38:21 merdely Exp $

COMMENT=	strip cascading style sheets from webpages

DISTNAME=	decss
PKGNAME=	decss-0.0.6
CATEGORIES=	www

MASTER_SITES=   ${HOMEPAGE}

HOMEPAGE=       http://www.pigdog.org/decss/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKDIST=	${WRKDIR}/source

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/DeCSS
	${INSTALL_SCRIPT} ${WRKSRC}/DeCSS ${PREFIX}/bin
	cd ${WRKSRC} && ${INSTALL_DATA} FAQ README decss-now.png \
           decss_mirror.html original_pigdog_article.txt \
	   ${PREFIX}/share/doc/DeCSS

.include <bsd.port.mk>
