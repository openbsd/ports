# $OpenBSD: Makefile,v 1.2 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	GDI+ comptible API

DISTNAME=	libgdiplus-2.0
PKGNAME=	${DISTNAME}p0

CATEGORIES=	x11 devel

SHARED_LIBS +=	gdiplus	0.0	# .0.0

HOMEPAGE=	http://www.mono-project.com/Libgdiplus

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

# GPLv2 and Mozilla Public License 1.1 
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 jpeg m pixman-1 \
		png z pthread-stubs xcb

MASTER_SITES=	ftp://ftp.novell.com/pub/mono/sources/libgdiplus/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext
LIB_DEPENDS=	pango-1.0.>=1600.0,pangocairo-1.0.>=1600.0,pangoft2-1.0.>=1600.0::devel/pango \
		tiff.>=38::graphics/tiff \
		exif.>=12::graphics/libexif \
		ungif.>=5::graphics/libungif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CFLAGS} -I${X11BASE}/include -I${LOCALBASE}/include \
		-I${LOCALBASE}/include/libpng"
CONFIGURE_ARGS=	--with-cairo=system --with-pango

.include <bsd.port.mk>
