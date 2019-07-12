# $OpenBSD: Makefile,v 1.21 2019/07/12 20:46:28 sthen Exp $

DISTNAME=	xscavenger-1.4.4
REVISION =	3
EXTRACT_SUFX=	.tgz
CATEGORIES=	games
FIX_EXTRACT_PERMISSIONS=Yes

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c sndio xcb

COMMENT=	Lode Runner clone
HOMEPAGE=	http://www.xdr.com/dash/scavenger.html
MASTER_SITES=	http://www.xdr.com/dash/

NO_TEST=	Yes

CONFIGURE_STYLE= imake
WRKSRC=		${WRKDIST}/src

post-extract:
	@cd ${WRKSRC} && mv scavenger.6 scavenger.man

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scavenger
	${INSTALL_DATA} ${WRKSRC}/../DOC ${PREFIX}/share/doc/scavenger

.include <bsd.port.mk>
