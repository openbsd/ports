# $OpenBSD: Makefile,v 1.2 2010/09/21 10:10:02 sthen Exp $ 

COMMENT=	simple and clean multi-user web file manager

DISTNAME=	mollify_1.6.5.5
PKGNAME=	${DISTNAME:S/_/-/}
EXTRACT_SUFX=	.zip
CATEGORIES=	www

HOMEPAGE=	http://www.mollify.org/

# Eclipse Public License v1.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mollify.googlecode.com/files/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/htdocs/mollify
WRKDIST=	${WRKDIR}/mollify

SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-core-*:www/php5/core

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	cd ${WRKSRC} && pax -rw * ${INSTDIR}
	mv ${INSTDIR}/index.html ${INSTDIR}/index.html.dist
	touch ${INSTDIR}/backend/configuration.php.dist

.include <bsd.port.mk>
