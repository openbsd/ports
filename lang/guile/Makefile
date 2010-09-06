# $OpenBSD: Makefile,v 1.32 2010/09/06 12:15:32 jasper Exp $

COMMENT=	GNU's Ubiquitous Intelligent Language for Extension

VERSION=	1.8.7
DISTNAME=	guile-${VERSION}
REVISION=	2
SHARED_LIBS=	guile 20.0 \
		guile-srfi-srfi-1-v-3 3.2 \
		guile-srfi-srfi-13-14-v-3 3.1 \
		guile-srfi-srfi-4-v-3 3.1 \
		guile-srfi-srfi-60-v-2 2.2 \
		guilereadline-v-17 17.3
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GNU:=guile/}

HOMEPAGE=	http://www.gnu.org/software/guile/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c gmp.>=6 ltdl m ncurses pthread readline

LIB_DEPENDS=	:gmp->=4.1:devel/gmp \
		::devel/libtool,-ltdl
RUN_DEPENDS=	devel/slib

MODULES=	devel/gettext

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
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
