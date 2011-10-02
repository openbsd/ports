# $OpenBSD: Makefile,v 1.22 2011/10/02 15:27:31 ajacoutot Exp $

ONLY_FOR_ARCHS-mono=	${MONO_ARCHS}

COMMENT-main=	MIME messages creation and parsing library
COMMENT-mono=	mono bindings for gmime

V=		2.6.0
DISTNAME=	gmime-${V}

PKGNAME-main=	${DISTNAME}
PKGNAME-mono=	gmime-sharp-${V}

REVISION-main=	1
REVISION-mono=	0

EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  gmime-2.6            0.0    # 600.0

CATEGORIES=	mail devel

HOMEPAGE=	http://spruce.sourceforge.net/gmime/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main += ${MODGETTEXT_WANTLIB}
WANTLIB-main += assuan c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB-main += gpgme-pthread gthread-2.0 pcre pthread z

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gmime/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}

MULTI_PACKAGES=	-main -mono

MODULES +=	devel/gettext

LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		devel/glib2 \
		security/gpgme>=1.3.1

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		DOLT_BASH="/bin/ksh"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--with-gpgme-prefix=${LOCALBASE} \
		--program-prefix='gmime-'

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

pre-configure:
	perl -pi -e 's,.\@GMIME_VERSION\@,,g' \
		${WRKSRC}/mono/gmime-sharp.dll.config.in

.include <bsd.port.mk>
