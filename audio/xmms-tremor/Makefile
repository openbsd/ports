# $OpenBSD: Makefile,v 1.4 2007/03/28 19:05:43 naddy Exp $
SHARED_ONLY=	Yes

COMMENT=	"Ogg Vorbis input plugin for XMMS using tremor"
DISTNAME=	xmms-tremor-1.0
PKGNAME=	${DISTNAME}p0
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	audio
MASTER_SITES=	http://mirror1.pdaxrom.org/source/src/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

LIB_DEPENDS=	vorbisidec.>=1::audio/tremor \
		xmms.>=4::audio/xmms

WANTLIB=	X11 Xext Xi gdk glib gmodule gtk iconv intl m

USE_X11=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"
LIBTOOL_FLAGS=	--tag=disable-static

.include <bsd.port.mk>
