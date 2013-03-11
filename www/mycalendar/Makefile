# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:43 espie Exp $

COMMENT=	lightweight and easy to use web calendar

V=		2.7
DISTNAME=	calendar-$V
PKGNAME=	mycalendar-$V
CATEGORIES=	www

HOMEPAGE=	http://www.fuzzymonkey.org/newfuzzy/software/perl/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=  Yes

MASTER_SITES=	http://www.fuzzymonkey.org/files/

RUN_DEPENDS=	print/pscal \
		print/ghostscript/gnu

NO_BUILD=	Yes
NO_TEST=	Yes
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
