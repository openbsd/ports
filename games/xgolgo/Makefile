# $OpenBSD: Makefile,v 1.7 2000/03/24 22:11:43 espie Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

WRKDIST=	${WRKDIR}/xeyes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
