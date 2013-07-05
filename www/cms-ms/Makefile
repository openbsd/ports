# $OpenBSD: Makefile,v 1.15 2013/07/05 09:34:35 jasper Exp $

COMMENT=		easy to use and powerfull CMS

DISTNAME=		cmsmadesimple-1.9.4-full
REVISION=		4
PKGNAME=		${DISTNAME:S/-full//}
CATEGORIES=		www

HOMEPAGE=		http://www.cmsmadesimple.org/

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		http://s3.amazonaws.com/cmsms/downloads/7100/

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*
EXTRACT_ONLY=

PREFIX=		${VARBASE}/www
INSTDIR=		${PREFIX}/cms/
SUBST_VARS=		INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	devel/smarty \
		lang/php/${MODPHP_VERSION},-gd \
		lang/php/${MODPHP_VERSION},-mysql

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@cd ${INSTDIR} && tar zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
