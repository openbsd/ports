# $OpenBSD: Makefile,v 1.3 2000/02/10 23:14:32 espie Exp $
#

ONLY_FOR_ARCHS=	i386
DISTNAME=	Wingz-142
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/financial/spreadsheet
EXTRACT_SUFX=	.tgz
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=    /emul/linux/lib/libc.so.5:${PORTSDIR}/emulators/linux_lib

WRKDIST=	${WRKDIR}

USE_X11=	yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
