# $OpenBSD: Makefile,v 1.48 2014/04/01 15:31:46 jasper Exp $

ONLY_FOR_ARCHS-mono=	${MONO_ARCHS}

COMMENT-main=	MIME messages creation and parsing library
COMMENT-mono=	mono bindings for gmime

GNOME_PROJECT=	gmime
GNOME_VERSION=	2.6.20

PKGNAME-main=	${DISTNAME}
PKGNAME-mono=	gmime-sharp-${GNOME_VERSION}

SHARED_LIBS +=  gmime-2.6            0.1      # 619.0

CATEGORIES=	mail devel

HOMEPAGE=	http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main += ${MODGETTEXT_WANTLIB}
WANTLIB-main += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-main += pcre pthread z

MULTI_PACKAGES=	-main -mono

MODULES +=	devel/gettext \
		x11/gnome

MODGNOME_TOOLS=	gobject-introspection vala

# needed to build the tests
BUILD_DEPENDS += security/libgpg-error

LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		devel/glib2

CONFIGURE_STYLE= gnu

### mono subpackage
PSEUDO_FLAVORS=	no_mono
FLAVOR ?=

MODMONO_DEPS=   No
DLLMAP_FILES=	mono/gmime-sharp.dll.config

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-mono}
MODULES+=	lang/mono
BUILD_DEPENDS+= ${MODMONO_BUILD_DEPENDS} \
		x11/mono-gtk2
RUN_DEPENDS-mono= ${MODMONO_RUN_DEPENDS} \
		x11/mono-gtk2
LIB_DEPENDS-mono= # empty
WANTLIB-mono=	# empty
.else
CONFIGURE_ARGS+= --disable-mono
.endif
### end of mono subpackage

.include <bsd.port.mk>
