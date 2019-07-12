# $OpenBSD: Makefile,v 1.51 2019/07/12 20:47:18 sthen Exp $

PORTROACH+=	limit:^1

COMMENT=	GNU's Ubiquitous Intelligent Language for Extension

VERSION=	1.8.8
DISTNAME=	guile-${VERSION}
REVISION=	8
SHARED_LIBS=	guile 20.0 \
		guile-srfi-srfi-1-v-3 3.2 \
		guile-srfi-srfi-13-14-v-3 3.1 \
		guile-srfi-srfi-4-v-3 3.1 \
		guile-srfi-srfi-60-v-2 2.2 \
		guilereadline-v-17 17.3
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=guile/}

HOMEPAGE=	https://www.gnu.org/software/guile/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB=  c gmp>=6 iconv intl ltdl m curses pthread readline

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/gmp>=4.1 \
		devel/libtool,-ltdl
RUN_DEPENDS=	devel/slib>=3b4

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
USE_GMAKE=		Yes

# Needed because otherwise regress tests won't build:
# warning: format '%ji' expects type 'intmax_t', but argument 4 has type 'scm_t_intmax'
CONFIGURE_ARGS+=	--disable-error-on-warning
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-fno-omit-frame-pointer ${CFLAGS}" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PTHREAD_CFLAGS=-pthread \
		PTHREAD_LIBS=-pthread

V=		${VERSION:C,.[0-9]+$,,}
SUBST_VARS=	V

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/guile-config/guile.m4 ${PREFIX}/share/aclocal
	# Create symlink from share/guile/slib to share/slib.
	# This allows other ports to find guile.init.
	@cd ${PREFIX}/share/guile && ln -s ../slib

.include <bsd.port.mk>
