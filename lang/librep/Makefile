# $OpenBSD: Makefile,v 1.71 2019/11/03 14:07:43 jasper Exp $

COMMENT=	Emacs Lisp-like runtime library

VERSION=	0.92.3
DISTNAME=	librep-${VERSION}
REVISION=	3

SHARED_LIBS +=  rep                  14.0     # .16.0

CATEGORIES=	lang

HOMEPAGE=	http://librep.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=  c ffi gdbm gmp iconv intl m curses pthread readline

MASTER_SITES=           https://download.tuxfamily.org/librep/
EXTRACT_SUFX=           .tar.xz


LIB_DEPENDS=		databases/gdbm \
			devel/gmp \
			devel/libffi

USE_GMAKE=		Yes

MAKE_FLAGS=		rep_LIBTOOL=${LIBTOOL}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static \
			--with-aclocaldir=${PREFIX}/share/aclocal

# -pthread is needed for opening libglib-2.0:
# rep:/usr/local/lib/libglib-2.0.so.3200.0: undefined symbol 'pthread_mutex_trylock'
# lazy binding failed!
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl -pthread"

CFLAGS +=	-fgnu89-inline

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/rep-xgettext.jl

# The bundled libtool gets installed by default, override it by installing
# the ports version directly.
post-install:
	${INSTALL_SCRIPT} ${LIBTOOL} ${PREFIX}/lib/rep/

.include <bsd.port.mk>
