COMMENT =	Mind-mapping application

DIST_TUPLE =	github phase1geo Minder 2.0.9 .
PKGNAME =	${DISTNAME:L}
REVISION =	1

CATEGORIES =	productivity

MAINTAINER =	Omar Polo <op@openbsd.org>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += archive c cairo gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 granite-7 graphene-1.0 gtk-4 gtksourceview-5
WANTLIB += intl json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += webp xml2

MODULES =	devel/dconf \
		devel/meson \
		lang/python

MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/gettext,-tools \
		lang/vala \
		textproc/discount

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+4,-guic

LIB_DEPENDS =	archivers/libarchive \
		devel/json-glib \
		graphics/graphene \
		graphics/libwebp \
		x11/elementary/granite \
		x11/gtksourceview5

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib

CONFIGURE_ENV += LDFLAGS="${LDFLAGS}"

post-install:
	cd ${PREFIX}/bin && ln -s com.github.phase1geo.minder minder

.include <bsd.port.mk>
