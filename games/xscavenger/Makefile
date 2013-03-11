# $OpenBSD: Makefile,v 1.17 2013/03/11 11:07:42 espie Exp $

DISTNAME=	xscavenger-1.4.4
REVISION =	2
EXTRACT_SUFX=	.tgz
CATEGORIES=	games

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c pthread-stubs sndio xcb

COMMENT=	Lode Runner clone
HOMEPAGE=	http://www.xdr.com/dash/scavenger.html
MASTER_SITES=	http://www.xdr.com/dash/

USE_GROFF =	Yes
NO_TEST=	Yes

CONFIGURE_STYLE= imake
WRKSRC=		${WRKDIST}/src

post-extract:
	@cd ${WRKSRC} && mv scavenger.6 scavenger.man

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/scavenger
	${INSTALL_DATA} ${WRKSRC}/../DOC ${PREFIX}/share/doc/scavenger

.include <bsd.port.mk>
