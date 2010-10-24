# $OpenBSD: Makefile,v 1.15 2010/10/24 21:19:03 ajacoutot Exp $

DISTNAME=	xscavenger-1.4.4
PKGNAME=	${DISTNAME}p2
EXTRACT_SUFX=	.tgz
CATEGORIES=	games

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c pthread-stubs sndio xcb

COMMENT=	Lode Runner clone
HOMEPAGE=	http://www.xdr.com/dash/scavenger.html
MASTER_SITES=	http://www.xdr.com/dash/

USE_GROFF =	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= imake
WRKSRC=		${WRKDIST}/src

post-extract:
	@cd ${WRKSRC} && mv scavenger.6 scavenger.man

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scavenger
	${INSTALL_DATA} ${WRKSRC}/../DOC ${PREFIX}/share/doc/scavenger

.include <bsd.port.mk>
