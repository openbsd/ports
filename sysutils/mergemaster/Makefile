# $OpenBSD: Makefile,v 1.3 2001/10/25 16:14:51 naddy Exp $

COMMENT=	"aids with merging configuration files during an upgrade"

DISTNAME=	mergemaster-1.25
CATEGORIES=	sysutils
NEED_VERSION=	1.402

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
WRKDIST=	${WRKDIR}/mergemaster

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mergemaster.sh ${PREFIX}/sbin/mergemaster
	${INSTALL_MAN} ${WRKSRC}/mergemaster.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
