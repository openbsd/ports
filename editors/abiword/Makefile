# $OpenBSD: Makefile,v 1.122 2019/02/05 08:47:37 ajacoutot Exp $

# XXX error: 'nullptr' was not declared in this scope
CXXFLAGS +=	-std=c++11
# XXX error: xap_Dialog.cpp:270:24: error: cast from 'std::nullptr_t' to 'char' loses precision
CXXFLAGS +=	-fpermissive

BROKEN-alpha=	gr_RenderInfo.cpp:426:1: internal compiler error: Segmentation fault

COMMENT=	free cross-platform WYSIWYG word processor

VERSION=	3.0.2
DISTNAME=	abiword-${VERSION}
REVISION=	6


MASTER_SITES0=		https://gitlab.gnome.org/World/AbiWord/commit/
PATCH_DIST_STRIP=	-p1
PATCHFILES=		abf88e1a8b441a0d678924503f2b53267dd5da52.diff:0 \
			e86f5ddf9c51824fca8555cf5daa8e81ed51f6e6.diff:0 \
			b0dc63173970e73bb0ef453128cb292dc616977f.diff:0 \
			2527fe2d9703183cede26139e23ccd6ceccca845.diff:0 \
			7ef52ffab8eea0a5f0e5289e99dff3a8f09298f1.diff:0 \
			9ec47e948f504d6f344abad5dd63ad8eb7dea65d.diff:0 \
			cec2fda355b67b5b814a803c5ed128c425cbb030.diff:0 \
			a3d4383af4da7e9f7550a80621969766cd0e96a3.diff:0 \
			eeb81b69c2ad1298a2c20274243bd5a1cdd62dcd.diff:0 \
			6b55f5fd8e1eb03248db3113f123653c93e352f1.diff:0 \
			09ba862866f7be17baf8110306284f9da64e8bab.diff:0 \
			a71100deb93e3b471199003e8acd5067fc4ff091.diff:0

MAJORVER=	${VERSION:C/..$//}
SUBST_VARS=	MAJORVER

CATEGORIES=	editors

HOMEPAGE=	http://www.abisource.com/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += avahi-common bz2 c cairo cairo-gobject croco-0.6 crypto
WANTLIB += curl dbus-1 enchant epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 goffice-0.10 gpg-error
WANTLIB += graphite2 gs gsf-1 gthread-2.0 gtk-3 harfbuzz hogweed
WANTLIB += iconv idn2 intl jpeg ltdl lzma m mpfr nettle nghttp2
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png16 pthread raptor2 rasqal rdf
WANTLIB += rsvg-2 spectre ssl ${LIBCXX} tasn1 unistring uuid wmf-0.2
WANTLIB += wmflite-0.2 wv-1.2 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += yajl z

MASTER_SITES=   http://www.abisource.com/downloads/abiword/${VERSION}/source/

MODULES=	lang/python

COMPILER =	base-clang ports-gcc

.if ${MACHINE_ARCH} == "hppa"
CFLAGS +=	-O0
.endif   

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gobject-introspection

# plugins/openxml.so
BUILD_DEPENDS +=devel/boost

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS=	devel/fribidi \
		converters/wv \
		devel/goffice \
		textproc/enchant \
		textproc/redland

# src/af/util/xp/ut_go_file.cpp
RUN_DEPENDS +=	devel/xdg-utils

PLUGINS=	goffice opendocument openwriter openxml pdf

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-introspection \
		--enable-plugins="${PLUGINS}" \
		--enable-clipart \
		--enable-templates

# let's try to keep this package small-ish
CONFIGURE_ARGS += \
		--without-evolution-data-server \
		--without-gnomevfs \
		--without-libical \
		--without-champlain \
		--without-inter7eps \
		--without-libtidy

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_prog_VALGRIND=

pre-configure:
	sed -i "s,python -c,python${MODPY_VERSION} -c,g" \
		${WRKSRC}/src/gi-overrides/Makefile.in

post-install:
	rm ${PREFIX}/lib/libabiword-${MAJORVER}*.{a,la}
	rm ${PREFIX}/lib/abiword-${MAJORVER}/plugins/*.{a,la}

.include <bsd.port.mk>
