# $OpenBSD: Makefile,v 1.2 1998/09/24 14:50:24 ian Exp $
#

ONLY_FOR_ARCHS=	i386
DISTNAME=	Wingz-142
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/financial/spreadsheet
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

RUN_DEPENDS=    /emul/linux/lib/libc.so.5:${PORTSDIR}/emulators/linux_lib

NO_WRKSUBDIR=	yes

USE_X11=	yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
