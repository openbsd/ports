# $OpenBSD: Makefile,v 1.12 2006/10/21 09:42:32 naddy Exp $

COMMENT=	"aids with merging configuration files during an upgrade"

DISTNAME=	mergemaster-1.46
PKGNAME=	${DISTNAME}p2
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://sites.inka.de/~mips/unix/distfiles/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=	${WRKDIR}/mergemaster

do-install:
	@perl -pi -e 's:\@SYSCONFDIR@:${SYSCONFDIR}:g;' \
		-e 's:\@LOCALBASE@:${LOCALBASE}:g;' \
		${WRKSRC}/mergemaster.sh ${WRKSRC}/mergemaster.8
	${INSTALL_SCRIPT} ${WRKSRC}/mergemaster.sh ${PREFIX}/sbin/mergemaster
	${INSTALL_MAN} ${WRKSRC}/mergemaster.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
