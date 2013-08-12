# $OpenBSD: Makefile,v 1.15 2013/08/12 04:11:21 robert Exp $

COMMENT=	web-based conference management software

V=		1.9.9
DISTNAME=	myreview_${V:S/./_/g}
PKGNAME=	myreview-${V}
REVISION=	7
CATEGORIES=	www

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} myreview_v1.pdf:0

HOMEPAGE=	http://myreview.lri.fr/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.bsdfrog.org/
MASTER_SITES0=	http://www.lri.fr/~rigaux/

EXTRACT_ONLY=
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/myreview
SUBST_VARS=	INSTDIR

MODULES=	lang/php
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mysql

do-install:
	@cd ${PREFIX} && tar -zxf ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX}
	@mv ${INSTDIR}/DBInfo.php ${INSTDIR}/DBInfo.php.sample
	@find ${PREFIX} -type d -name ".svn" | xargs rm -R
	@find ${PREFIX} -type f -name "*~" -exec rm {} \;
	@find ${PREFIX} -type f -name "*.bak" -exec rm {} \;
	@${INSTALL_DATA} ${FULLDISTDIR}/myreview_v1.pdf ${INSTDIR}
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
