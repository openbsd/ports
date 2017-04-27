# $OpenBSD: Makefile,v 1.29 2017/04/27 22:30:06 ajacoutot Exp $

COMMENT=		generic spell checking library

V=			1.6.1
GH_ACCOUNT=		AbiWord
GH_PROJECT=		enchant
GH_TAGNAME=		enchant-${V:S/./-/g}
PKGNAME=		${GH_PROJECT}-${V}

SHARED_LIBS +=  enchant              6.1      # 7.1

CATEGORIES=		textproc

HOMEPAGE=		https://abiword.github.io/enchant/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += aspell c glib-2.0 gmodule-2.0 hunspell-1.6 iconv intl
WANTLIB += m pcre pthread ${LIBCXX}

# c++11
MODULES +=		gcc4
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		c++

LIB_DEPENDS=		devel/glib2 \
			textproc/aspell/core \
			textproc/hunspell

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

# XXX linking gnome/todo and gnome/calendar breaks without this
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib ${LIBCXX:C/^/-l/}"

CONFIGURE_ARGS=		--with-aspell-prefix=${LOCALBASE} \
			--with-ispell-dir=${LOCALBASE}/lib/ispell/ \
			--disable-voikko \
			--disable-zemberek \
			--disable-uspell \
			--disable-hspell

###
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool # libtoolize

pre-configure:
	cd ${WRKSRC} && ${SETENV} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
###

post-install:
	rm ${PREFIX}/lib/enchant/*.{a,la}

.include <bsd.port.mk>
