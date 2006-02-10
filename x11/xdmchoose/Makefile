# $OpenBSD: Makefile,v 1.6 2006/02/10 23:03:53 steven Exp $

COMMENT=	"alternative xdm-invoked chooser"

DISTNAME=	xdmchoose-1.2.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
HOMEPAGE=	http://frmb.org/xdmchoose.html

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xdmcp Xpm c

MASTER_SITES=	http://frmb.org/download/

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include"

post-install:
	@perl -i -pe 's!%%PREFIX%%!${TRUEPREFIX}!g' ${WRKSRC}/xdmchoose.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/xdmchoose
	${INSTALL_DATA} ${WRKSRC}/xdmchoose.conf \
		${PREFIX}/share/examples/xdmchoose/
	${INSTALL_DATA_DIR} ${PREFIX}/share/xdmchoose
. for bg in blur plain tiled
	${INSTALL_DATA} ${WRKSRC}/xdmchoose-${bg}.xpm ${PREFIX}/share/xdmchoose/
. endfor

.include <bsd.port.mk>
