# $OpenBSD: Makefile,v 1.12 2010/11/18 12:03:28 jasper Exp $
SHARED_ONLY=	Yes

COMMENT=	Ogg Vorbis input plugin for XMMS using tremor
DISTNAME=	xmms-tremor-1.0
REVISION=	3
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

WANTLIB=	X11 Xau Xdmcp Xext Xi gdk glib gmodule gtk m \
		pthread-stubs xcb vorbisidec>=1

MODULES +=	devel/gettext

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
