# $OpenBSD: Makefile,v 1.14 2002/03/07 09:23:00 kevlo Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"reverse compile man pages from formatted form"

DISTNAME=	rman-3.0.9
CATEGORIES=	textproc
NEED_VERSION=	1.508
HOMEPAGE=	http://polyglotman.sourceforge.net/

PERMIT_PACKAGE_CDROM=	"conflicting no fee/free license"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM="conflicting no fee/free license"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rman ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
