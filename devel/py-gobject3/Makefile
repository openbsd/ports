# $OpenBSD: Makefile,v 1.70 2019/11/01 19:36:06 ajacoutot Exp $

COMMENT-main=		Python bindings for GLib and GObject
COMMENT-common=		common files for py-gobject3

GNOME_PROJECT=		pygobject
GNOME_VERSION=		3.34.0
MODPY_EGG_VERSION=	${GNOME_VERSION}

PKGNAME-main=		py-gobject3-${GNOME_VERSION}
FULLPKGNAME-common=	py-gobject3-common-${GNOME_VERSION}
FULLPKGPATH-common=	devel/py-gobject3,-common

CATEGORIES=		devel

HOMEPAGE=		http://www.pygtk.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB-main += ${MODPY_WANTLIB}
WANTLIB-main += cairo cairo-gobject ffi gio-2.0 girepository-1.0 glib-2.0
WANTLIB-main += gobject-2.0 intl pthread

WANTLIB-common += #empty

MULTI_PACKAGES=		-main -common

FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection
MODPY_SETUPTOOLS=	Yes

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

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}

CONFIGURE_ARGS=		-Dpython=python${MODPY_VERSION}

.include <bsd.port.mk>
