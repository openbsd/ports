# $OpenBSD: Makefile,v 1.4 2004/09/15 00:50:10 espie Exp $

COMMENT=	"image viewer/manager"
DISTNAME=	pornview-0.2.0pre1
CATEGORIES=	graphics

HOMEPAGE=	http://pornview.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pornview/}

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	mplayer
FLAVOR?=

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf \
		charset::converters/libiconv


.if ${FLAVOR:L:Mmplayer}
CONFIGURE_ARGS+=--enable-mplayer
RUN_DEPENDS=	:mplayer-*:x11/mplayer
.endif

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
		  -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" 

.include <bsd.port.mk>
