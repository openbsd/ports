# $OpenBSD: Makefile,v 1.3 2009/09/06 07:24:55 ajacoutot Exp $

COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-2.4.2

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	1.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPLv2 and Mozilla Public License 1.1 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp Xrender cairo expat fontconfig freetype
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 jpeg m pcre
WANTLIB += pixman-1 png pthread-stubs xcb z

MASTER_SITES=	ftp://ftp.novell.com/pub/mono/sources/libgdiplus/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

USE_LIBTOOL=	Yes

LIB_DEPENDS=	pango-1.0.>=1600.0,pangocairo-1.0.>=1600.0,pangoft2-1.0.>=1600.0::devel/pango \
		tiff.>=38::graphics/tiff \
		exif.>=12::graphics/libexif \
		ungif.>=5::graphics/libungif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-pango

.include <bsd.port.mk>
