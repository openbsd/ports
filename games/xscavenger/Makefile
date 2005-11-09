# $OpenBSD: Makefile,v 1.9 2005/11/09 01:25:38 jcs Exp $

DISTNAME=	xscavenger-1.4.4
EXTRACT_SUFX=	.tgz
CATEGORIES=	games

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c ossaudio

COMMENT=	"Lode Runner clone"
HOMEPAGE=	http://www.xdr.com/dash/scavenger.html
MASTER_SITES=	http://www.xdr.com/dash/

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
