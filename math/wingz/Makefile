# $OpenBSD: Makefile,v 1.5 2000/03/17 20:47:07 turan Exp $
#

ONLY_FOR_ARCHS=	i386
DISTNAME=	Wingz-142
CATEGORIES=	math
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/financial/spreadsheet
EXTRACT_SUFX=	.tgz

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	"shareware"
PERMIT_PACKAGE_FTP=	"shareware"
PERMIT_DISTFILES_CDROM=	"shareware"
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=    /emul/linux/lib/libc.so.5:emulators/linux_lib

WRKDIST=	${WRKDIR}

USE_X11=	Yes

post-install:
	@${SH} ${PKGDIR}/INSTALL ${PKGNAME} POST-INSTALL

.include <bsd.port.mk>
