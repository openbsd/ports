# $OpenBSD: Makefile,v 1.65 2018/06/01 07:22:37 ajacoutot Exp $

COMMENT-main=		Python bindings for GLib and GObject
COMMENT-common=		common files for py-gobject3

GNOME_PROJECT=		pygobject
GNOME_VERSION=		3.28.3
MODPY_EGG_VERSION=	${GNOME_VERSION}

PKGNAME-main=		py-gobject3-${GNOME_VERSION}
FULLPKGNAME-common=	py-gobject3-common-${GNOME_VERSION}
FULLPKGPATH-common=	devel/py-gobject3,-common

CATEGORIES=		devel

HOMEPAGE=		http://www.pygtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += X11 Xext Xrender cairo cairo-gobject expat ffi fontconfig
WANTLIB-main += freetype gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB-main += gobject-2.0 iconv intl m pcre pixman-1 png pthread
WANTLIB-main += xcb xcb-render xcb-shm z

WANTLIB-common += #empty

MULTI_PACKAGES=		-main -common

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

# XXX https://bugzilla.gnome.org/show_bug.cgi?id=737874
MODULES +=		gcc4
MODGCC4_ARCHS=		${GCC3_ARCHS} ${GCC4_ARCHS}

BUILD_DEPENDS=		graphics/py-cairo${MODPY_FLAVOR}

LIB_DEPENDS-common=	#empty
RUN_DEPENDS-common=	#empty

LIB_DEPENDS-main=	devel/gobject-introspection
RUN_DEPENDS-main=	devel/py-gobject3,-common=${GNOME_VERSION} \
			graphics/py-cairo${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
FULLPKGNAME-main=	${PKGNAME-main:S/^py-/py3-/}
FULLPKGPATH-main=	devel/py-gobject3,-main${MODPY_FLAVOR}
.endif

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	x11
TEST_DEPENDS=		${BUILD_PKGPATH} \
			devel/py-codestyle \
			devel/pyflakes

post-patch:
	sed -i 's,pep8,pycodestyle,g' ${WRKSRC}/Makefile.in

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gi/*.{a,la}

.include <bsd.port.mk>
