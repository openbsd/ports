# $OpenBSD: Makefile,v 1.8 2004/11/26 09:54:35 alek Exp $

COMMENT=	"lightweight and easy to use web calendar"

V=		2.6
DISTNAME=	calendar-$V
PKGNAME=	mycalendar-$Vp0
CATEGORIES=	www

HOMEPAGE=	http://www.fuzzymonkey.org/newfuzzy/software/perl/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes
PERMIT_PACKAGE_FTP=    Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=  Yes

MASTER_SITES=	http://www.fuzzymonkey.org/files/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/calendar

PREFIX=		/var/www
INSTDIR=	${PREFIX}/cgi-bin

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}/calendar
	@cd ${WRKSRC} && cp -R * ${INSTDIR}/calendar
	${INSTALL_DATA_DIR} ${INSTDIR}/calendar/examples
	${INSTALL_DATA} ${INSTDIR}/calendar/template.html \
		${INSTDIR}/calendar/examples
	@touch ${INSTDIR}/calendar/examples/appointments.txt

.include <bsd.port.mk>
