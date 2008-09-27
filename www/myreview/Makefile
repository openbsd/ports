# $OpenBSD: Makefile,v 1.2 2008/09/27 09:23:28 ajacoutot Exp $

COMMENT=	web-based conference management software

V=		1.9.9
DISTNAME=	myreview_${V:S/./_/g}
PKGNAME=	myreview-${V}p0
CATEGORIES=	www

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} myreview_v1.pdf:0

HOMEPAGE=	http://myreview.lri.fr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.bsdfrog.org/OpenBSD/distfiles/
MASTER_SITES0=	http://www.lri.fr/~rigaux/

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
INSTDIR=	${PREFIX}/myreview
SUBST_VARS=	INSTDIR

RUN_DEPENDS=	:php5-mysql-*:www/php5/extensions,-mysql
		
do-install:
	@cd ${PREFIX} && tar -zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/DBInfo.php ${INSTDIR}/DBInfo.php.sample
	@find ${PREFIX} -type d -name ".svn" | xargs rm -R
	@find ${PREFIX} -type f -name "*~" -exec rm {} \;
	@find ${PREFIX} -type f -name "*.bak" -exec rm {} \;
	@${INSTALL_DATA} ${FULLDISTDIR}/myreview.pdf ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
