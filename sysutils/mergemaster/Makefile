# $OpenBSD: Makefile,v 1.5 2002/02/12 16:22:04 naddy Exp $

COMMENT=	"aids with merging configuration files during an upgrade"

DISTNAME=	mergemaster-1.26
CATEGORIES=	sysutils
NEED_VERSION=	1.504

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://sites.inka.de/mips/unix/distfiles/ \
		ftp://rt.fm/pub/mergemaster/

NO_BUILD=	Yes
NO_REGRESS=	Yes
WRKDIST=	${WRKDIR}/${DISTNAME:C/-.*//}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mergemaster.sh ${PREFIX}/sbin/mergemaster
	${INSTALL_MAN} ${WRKSRC}/mergemaster.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
