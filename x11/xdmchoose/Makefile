# $OpenBSD: Makefile,v 1.1.1.1 2001/02/18 16:27:28 naddy Exp $

DISTNAME=	xdmchoose-1.1.1
CATEGORIES=	x11
NEED_VERSION=	1.352
HOMEPAGE=	http://frmb.home.cern.ch/frmb/xdmchoose.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://frmb.home.cern.ch/frmb/download/

BUILD_DEPENDS=	automake::devel/automake

USE_X11=	Yes
CONFIGURE_STYLE= gnu

post-install:
	@perl -i -pe 's!%%PREFIX%%!${PREFIX}!g' ${WRKSRC}/xdmchoose.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdmchoose
	${INSTALL_DATA} ${WRKSRC}/xdmchoose.conf \
		${PREFIX}/share/examples/xdmchoose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/xdmchoose
. for bg in blur plain tiled
	${INSTALL_DATA} ${WRKSRC}/xdmchoose-${bg}.xpm ${PREFIX}/share/xdmchoose/
. endfor

.include <bsd.port.mk>
