# $OpenBSD: Makefile,v 1.7 2013/07/05 09:34:35 jasper Exp $

COMMENT=	powerful and flexible web calendar

V=		6.5.4
DISTNAME=	plans_${V}
PKGNAME=	${DISTNAME:S/_/-/}
REVISION=	0
CATEGORIES=	www

HOMEPAGE=	http://www.planscalendar.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

MASTER_SITES=	${HOMEPAGE}/release/
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/cgi-bin

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/plans
	${INSTALL_DATA_DIR} ${PREFIX}/htdocs/plans
	cd ${WRKSRC} && mv plans_config.pl plans_config-dist.pl
	${INSTALL_SCRIPT} ${WRKSRC}/*.cgi ${INSTDIR}/plans
	${INSTALL_DATA} ${WRKSRC}/*.pl ${INSTDIR}/plans
	${INSTALL_DATA} ${WRKSRC}/*.xml ${INSTDIR}/plans
	${INSTALL_DATA} ${WRKSRC}/*.txt ${INSTDIR}/plans
	cp -Rp ${WRKSRC}/theme ${PREFIX}/htdocs/plans
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/htdocs/plans/theme

.include <bsd.port.mk>
