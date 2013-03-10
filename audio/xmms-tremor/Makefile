# $OpenBSD: Makefile,v 1.16 2013/03/10 22:55:06 espie Exp $
SHARED_ONLY=	Yes

COMMENT=	Ogg Vorbis input plugin for XMMS using tremor
DISTNAME=	xmms-tremor-1.0
REVISION=	6
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

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.57
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
