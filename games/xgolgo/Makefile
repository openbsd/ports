# $OpenBSD: Makefile,v 1.8 2000/04/01 18:23:46 espie Exp $
#

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/

USE_IMAKE=		Yes
NO_INSTALL_MANPAGES=	Yes

WRKDIST=	${WRKDIR}/xeyes
FAKE=			Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
