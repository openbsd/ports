# $OpenBSD

COMMENT=		easy to use and powerfull CMS

DISTNAME=		cmsmadesimple-1.6.4-full
PKGNAME=		${DISTNAME:S/-full//}
CATEGORIES=		www

HOMEPAGE=		http://www.cmsmadesimple.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://s3.amazonaws.com/cmsms/downloads/4221/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*
EXTRACT_ONLY=

PREFIX= 		/var/www
INSTDIR=		${PREFIX}/cms/
SUBST_VARS=		INSTDIR


PHP_VERSION=	5
RUN_DEPENDS=	::devel/smarty \
		:php${PHP_VERSION}-gd-*:www/php${PHP_VERSION}/extensions,-gd \
		:php${PHP_VERSION}-mysql-*:www/php${PHP_VERSION}/extensions,-mysql

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
