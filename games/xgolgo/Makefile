# $OpenBSD: Makefile,v 1.5 2000/02/12 06:29:53 turan Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/
NEED_VERSION=	1.191

USE_IMAKE=	yes
NO_INSTALL_MANPAGES=	yes

WRKDIST=	${WRKDIR}/xeyes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
