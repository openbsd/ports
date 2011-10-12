# $OpenBSD: Makefile,v 1.14 2011/10/12 12:54:31 jasper Exp $
SHARED_ONLY=	Yes

COMMENT=	Ogg Vorbis input plugin for XMMS using tremor
DISTNAME=	xmms-tremor-1.0
REVISION=	5
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	audio
MASTER_SITES=	http://mirror1.pdaxrom.org/source/src/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	audio/tremor
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	audio/xmms

WANTLIB=	X11 Xext Xi gdk glib gmodule gtk m \
		xcb vorbisidec>=1

MODULES +=	devel/gettext

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
