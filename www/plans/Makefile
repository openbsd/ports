# $OpenBSD: Makefile,v 1.2 2005/01/14 04:57:05 kevlo Exp $

COMMENT=	"powerful and flexible web calendar"

V=		6.5.4
DISTNAME=	plans_${V}
PKGNAME=	${DISTNAME:S/_/-/}
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
	@cd ${WRKSRC} && mv plans_config.pl plans_config-dist.pl
	@cd ${WRKSRC} && ${INSTALL_SCRIPT} *.{pl,cgi} ${INSTDIR}/plans
	@cd ${WRKSRC} && cp *.{xml,txt} ${INSTDIR}/plans
	@cd ${WRKSRC} && mv theme ${PREFIX}/htdocs/plans

.include <bsd.port.mk>
