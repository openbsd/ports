# $OpenBSD: Makefile,v 1.16 2002/05/13 23:31:26 espie Exp $
#

COMMENT=	"commercial spreadsheet"

ONLY_FOR_ARCHS=	i386
DISTNAME=	Wingz-142
PKGNAME=	${DISTNAME:L}
CATEGORIES=	math
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/financial/spreadsheet/}
EXTRACT_SUFX=	.tgz

PERMIT_PACKAGE_CDROM=	"shareware"
PERMIT_PACKAGE_FTP=	"shareware"
PERMIT_DISTFILES_CDROM=	"shareware"
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=		Yes

do-configure:
	@cd ${WRKDIST} && \
		sed 's:xxxx:${PREFIX}/lib/X11/:' Wingz/bin/Wingz.sh >Wingz.sh

do-install:
	@cd ${WRKDIST} && pax -w Wingz |(cd ${PREFIX}/lib/X11; pax -r)
	${INSTALL_SCRIPT} ${WRKDIST}/Wingz.sh ${PREFIX}/bin/Wingz
	${INSTALL_DATA} ${WRKDIST}/Wingz/Wingz.Xdefs ${PREFIX}/lib/X11/app-defaults/Wingz
	@install -m 666 /dev/null ${PREFIX}/lib/X11/Wingz/.wingz
	
RUN_DEPENDS=    ::emulators/redhat/base

WRKDIST=	${WRKDIR}

USE_X11=	Yes

.include <bsd.port.mk>
