# $OpenBSD: Makefile,v 1.18 2014/11/26 20:06:39 naddy Exp $
SHARED_ONLY=	Yes

COMMENT=	Ogg Vorbis input plugin for XMMS using tremor
DISTNAME=	xmms-tremor-1.0
REVISION=	7
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	audio
MASTER_SITES=	http://mirror1.pdaxrom.org/source/src/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=	audio/tremor>=20120410
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	audio/xmms

WANTLIB=	X11 Xext Xi gdk glib gmodule gtk m ogg \
		vorbisidec>=3 xcb

MODULES +=	devel/gettext


CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
