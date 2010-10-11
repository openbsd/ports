# $OpenBSD: Makefile,v 1.78 2010/10/11 08:12:44 jasper Exp $

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	2.8.6
MAJORVER=	${VERSION:C/..$//}
DISTNAME=	abiword-${VERSION}

REVISION=	1

# Merge a patch from Fedora to change default font from Times Roman to
# DejaVu Serif.: fixes font corruption issue on machines where
# msttcorefonts are not installed.
PATCHFILES=	abiword-dejavu.patch:0
MASTER_SITES0=	http://www.bsdfrog.org/OpenBSD/distfiles/

SHARED_LIBS +=	abiword-2.8 0.0 # .0.0

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	::devel/fribidi \
		::converters/wv \
		::textproc/enchant \
		::x11/gnome/librsvg

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 bz2 c cairo
WANTLIB += croco-0.6 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gsf-1
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xml2 z xcb-render xcb-render-util wmf-0.2 wmflite-0.2
WANTLIB += fribidi enchant rsvg-2 wv-1.2

MASTER_SITES=   ${HOMEPAGE}/downloads/abiword/${VERSION}/source/

USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-templates \
		--enable-clipart \
		--enable-collab-backend-fake=no \
		--disable-collab-backend-telepathy \
		--disable-collab-record-always \
		--enable-collab-backend-xmpp \
		--enable-collab-backend-sugar \
		--without-goffice \
		--without-gnomevfs \
		--without-gucharmap
# broken configure checks (i.e. "no" makes it think we want to enable them)
#		--disable-collab-backend-tcp
#		--disable-collab-backend-service

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=	MAJORVER

pre-configure:
	@perl -pi -e "s|libpng12|libpng|g" ${WRKSRC}/configure

.include <bsd.port.mk>
