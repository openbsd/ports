# $OpenBSD: Makefile,v 1.1.1.1 2014/09/29 09:58:13 ajacoutot Exp $

COMMENT=		GNU's Ubiquitous Intelligent Language for Extension

VERSION=		2.0.11
DISTNAME=		guile-${VERSION}
PKGNAME=		guile2-${VERSION}
V=			${VERSION:C,.[0-9]+$,,}
SUBST_VARS=		V

CATEGORIES=		lang

HOMEPAGE=		https://www.gnu.org/software/guile/

SHARED_LIBS +=	guile-2.0                 0.0 # 29.2
SHARED_LIBS +=	guilereadline-v-18        0.0 # 18.0

# GPLv3, LGPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi gc gmp ltdl m ncurses pthread readline unistring

MASTER_SITES=		${MASTER_SITE_GNU:=guile/}

MODULES=		devel/gettext

USE_GMAKE=		Yes

RUN_DEPENDS=		devel/slib
LIB_DEPENDS=		converters/libunistring \
			devel/boehm-gc \
			devel/gmp \
			devel/libffi \
			devel/libtool,-ltdl

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
# Needed because otherwise regress tests won't build:
# warning: format '%ji' expects type 'intmax_t', but argument 4 has type 'scm_t_intmax'
CONFIGURE_ARGS +=	--disable-error-on-warning

post-install:
	install -d ${PREFIX}/share/guile/site/${V}/
	# fix conflict with devel/guile
	mv ${PREFIX}/bin/guile{,2}
	mv ${PREFIX}/bin/guile{,2}-config
	mv ${PREFIX}/bin/guile{,2}-snarf
	mv ${PREFIX}/bin/guile{,2}-tools
	mv ${PREFIX}/share/aclocal/guile{,2}.m4
	mv ${PREFIX}/man/man1/guile{,2}.1
	rm -rf ${PREFIX}/info

.include <bsd.port.mk>
