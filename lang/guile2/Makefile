# $OpenBSD: Makefile,v 1.23 2019/07/16 21:29:41 sthen Exp $

# When updating, check that x11/gnome/aisleriot MODGNOME_CPPFLAGS references the
# proper guile2 includes directory

BROKEN-powerpc=		Segmentation fault (core dumped)

COMMENT=		GNU's Ubiquitous Intelligent Language for Extension
# '

VERSION=		2.2.6
DISTNAME=		guile-${VERSION}
PKGNAME=		guile2-${VERSION}
V=			${VERSION:R}
SUBST_VARS=		V
REVISION=		0

CATEGORIES=		lang

HOMEPAGE=		https://www.gnu.org/software/guile/

SHARED_LIBS +=  guile-2.2            0.2      # 4.1

# GPLv3, LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += c curses ffi gc gmp iconv intl ltdl m pthread readline
WANTLIB += unistring

MASTER_SITES=		${MASTER_SITE_GNU:=guile/}

# internal compiler error: in unify_nodes, at tree-ssa-structalias.c:1231
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE=		Yes

RUN_DEPENDS=		devel/slib
LIB_DEPENDS=		converters/libunistring \
			devel/boehm-gc \
			devel/gettext,-runtime \
			devel/gmp \
			devel/libffi \
			devel/libtool,-ltdl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--program-suffix=${V}

# Needed because otherwise regress tests won't build:
# warning: format '%ji' expects type 'intmax_t', but argument 4 has type 'scm_t_intmax'
CONFIGURE_ARGS +=	--disable-error-on-warning

post-install:
	install -d ${PREFIX}/share/guile/site/${V}/
	# fix conflict with devel/guile
	mv ${PREFIX}/share/aclocal/guile{,${V}}.m4
	rm -rf ${PREFIX}/info

.include <bsd.port.mk>
