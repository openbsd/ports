# $OpenBSD: Makefile,v 1.4 2000/03/05 18:30:34 espie Exp $
#

ONLY_FOR_ARCHS=	i386
DISTNAME=	Wingz-142
CATEGORIES=	math
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/financial/spreadsheet
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=    /emul/linux/lib/libc.so.5:emulators/linux_lib

WRKDIST=	${WRKDIR}

USE_X11=	Yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
