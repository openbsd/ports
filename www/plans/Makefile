# $OpenBSD: Makefile,v 1.3 2006/11/15 06:42:16 steven Exp $

COMMENT=	"powerful and flexible web calendar"

V=		6.5.4
DISTNAME=	plans_${V}
PKGNAME=	${DISTNAME:S/_/-/}p0
CATEGORIES=	www

HOMEPAGE=	http://www.planscalendar.com/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	${HOMEPAGE}/release/
EXTRACT_SUFX=	.zip

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

PREFIX=		/var/www
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
