# $OpenBSD: Makefile,v 1.1.1.1 2002/07/17 03:14:13 kevlo Exp $

COMMENT=	"lightweight and easy to use web calendar"

DISTNAME=	mycalendar-1.5
CATEGORIES=	www

HOMEPAGE=	http://www.fuzzymonkey.org/perl/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://www.fuzzymonkey.org/files/

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/calendar

PREFIX=		/var/www
INSTDIR=	${PREFIX}/cgi-bin

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/calendar
	@cd ${WRKSRC} && cp -R * ${INSTDIR}/calendar

.include <bsd.port.mk>
