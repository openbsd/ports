# $OpenBSD: Makefile,v 1.13 2001/10/28 13:05:49 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"reverse compile man pages from formatted form"

DISTNAME=	rman
PKGNAME=        rman-3.0.9
CATEGORIES=	textproc
NEED_VERSION=	1.402
MASTER_SITES=   ftp://polyglot.sourceforge.net/pub/polyglotman/

PERMIT_PACKAGE_CDROM=	"conflicting no fee/free license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM="conflicting no fee/free license"
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://polyglotman.sourceforge.net/

WRKDIST=        ${WRKDIR}/${PKGNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
