# $OpenBSD: Makefile,v 1.21 2011/04/04 13:36:51 ajacoutot Exp $

COMMENT-main=	MIME messages creation and parsing library
COMMENT-mono=	mono bindings for gmime

V=		2.4.24
DISTNAME=	gmime-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-mono=	gmime-sharp-${V}

REVISION-mono=	0

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  gmime-2.4            0.0      # .6.7

CATEGORIES=	mail devel

HOMEPAGE=	http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main += ${MODGETTEXT_WANTLIB}
WANTLIB-main += pcre z glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gmime/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=	-main

MODULES +=	devel/gettext

LIB_DEPENDS-main= devel/glib2 

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		DOLT_BASH="/bin/ksh"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

### mono subpackage
PSEUDO_FLAVORS=	no_mono
FLAVOR ?=

MODMONO_DEPS=   No
DLLMAP_FILES=	mono/gmime-sharp.dll.config

# keep in sync with lang/mono/mono.port.mk
ONLY_FOR_ARCHS-mono= i386 amd64

BUILD_MONO = No
.if !${FLAVOR:L:Mno_mono}
MULTI_PACKAGES+= -mono
.  for _a in ${MACHINE_ARCH} ${ARCH}
.    if ${ONLY_FOR_ARCHS-mono:M${_a}}
BUILD_MONO = Yes
.    endif
.  endfor
.endif

.if ${BUILD_MONO:L} == "yes"
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

pre-configure:
	perl -pi -e 's,.\@GMIME_VERSION\@,,g' \
		${WRKSRC}/mono/gmime-sharp.dll.config.in

.include <bsd.port.mk>
