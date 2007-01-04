# $OpenBSD: Makefile,v 1.3 2007/01/04 20:19:53 steven Exp $

COMMENT=	"Ogg Vorbis and MP3 files tagger"

DISTNAME=	tagtool-0.12.2
PKGNAME=	${DISTNAME}p0
CATEGORIES=	audio
HOMEPAGE=	http://pwp.netcabo.pt/paol/tagtool/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tagtool/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xext Xrender atk-1.0 c m z stdc++ ogg fontconfig \
		freetype glib-2.0 gmodule-2.0 glitz png \
		gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 cairo

MODULES=	devel/gettext

BUILD_DEPENDS=	:p5-XML-Parser-*:textproc/p5-XML-Parser

LIB_DEPENDS=	id3.>=3.8::audio/id3lib \
		vorbis.>=5.0::audio/libvorbis \
		gtk-x11-2.0.>=0.14,gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14::x11/gtk+2 \
		glade-2.0.>=0.3::devel/libglade2 \
		vorbisfile.>=4::audio/libvorbis \
		xml2.>=9::textproc/libxml

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm -logg"

USE_GMAKE=	Yes
USE_X11=	Yes

.include <bsd.port.mk>
