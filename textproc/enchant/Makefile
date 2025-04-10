PORTROACH=		limit:^1

COMMENT=		generic spell checking library

V=			1.6.1
GH_ACCOUNT=		AbiWord
GH_PROJECT=		enchant
GH_TAGNAME=		enchant-${V:S/./-/g}
REVISION=		5

# XXX needed for portroach (DISTNAME must match the GH_PROJECT-GH_TAGNAME)
SITES=			https://github.com/AbiWord/enchant/releases/download/${GH_PROJECT}-${V:S/./-/g}/
DISTNAME=		${GH_PROJECT}-${V}
WRKDIST=		${WRKDIR}/${DISTNAME}

SHARED_LIBS +=  enchant              6.1      # 7.1

CATEGORIES=		textproc

HOMEPAGE=		https://abiword.github.io/enchant/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += aspell c curses glib-2.0 gmodule-2.0 hunspell-1.7 iconv intl
WANTLIB += m pcre2-8 pthread ${COMPILER_LIBCXX}

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/glib2 \
			textproc/aspell/core \
			textproc/hunspell

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include"

# XXX linking gnome/todo and gnome/calendar breaks without this
CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib ${LIBCXX:C/^/-l/}"

CONFIGURE_ARGS=		--with-aspell-prefix=${LOCALBASE} \
			--with-ispell-dir=${LOCALBASE}/lib/ispell/ \
			--disable-voikko \
			--disable-zemberek \
			--disable-uspell \
			--disable-hspell

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

post-install:
	rm ${PREFIX}/lib/enchant/*.{a,la}

.include <bsd.port.mk>
