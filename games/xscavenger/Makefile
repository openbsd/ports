# $OpenBSD: Makefile,v 1.2 2001/11/02 17:52:59 jcs Exp $

DISTNAME=	xscavenger-142
EXTRACT_SUFX=	.tgz
CATEGORIES=	games
NEED_VERSION=	1.420
PKGNAME=	xscavenger-1.4.2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"Lode Runner clone"
HOMEPAGE=	http://www.xdr.com/dash/scavenger.html
MASTER_SITES=	http://www.xdr.com/dash/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= imake
WRKSRC=		${WRKDIST}/src

post-extract:
	@cd ${WRKSRC} && mv scavenger.6 scavenger.man

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scavenger
	${INSTALL_DATA} ${WRKSRC}/../DOC ${PREFIX}/share/doc/scavenger

.include <bsd.port.mk>
