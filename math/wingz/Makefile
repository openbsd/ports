# $OpenBSD: Makefile,v 1.7 2000/04/08 22:16:57 espie Exp $
#

ONLY_FOR_ARCHS=	i386
DISTNAME=	Wingz-142
CATEGORIES=	math
NEED_VERSION=	1.230
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/financial/spreadsheet
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"shareware"
PERMIT_PACKAGE_FTP=	"shareware"
PERMIT_DISTFILES_CDROM=	"shareware"
PERMIT_DISTFILES_FTP=	Yes
FAKE=			Yes

NO_BUILD=		Yes

do-configure:
	@cd ${WRKDIST} && \
		sed 's:xxxx:${PREFIX}/lib/X11/:' Wingz/bin/Wingz.sh >Wingz.sh

do-install:
	cd ${WRKDIST} && pax -w Wingz |(cd ${PREFIX}/lib/X11; pax -r)
	${INSTALL_SCRIPT} ${WRKDIST}/Wingz.sh ${PREFIX}/bin/Wingz
	${INSTALL_DATA} ${WRKDIST}/Wingz/Wingz.Xdefs ${PREFIX}/lib/X11/app-defaults/Wingz
	install -m 666 /dev/null ${PREFIX}/lib/X11/Wingz/.wingz
	
RUN_DEPENDS=    /emul/linux/lib/libc.so.5::emulators/linux_lib

WRKDIST=	${WRKDIR}

USE_X11=	Yes

.include <bsd.port.mk>
