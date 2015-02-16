# $OpenBSD: Makefile,v 1.62 2015/02/16 22:57:09 naddy Exp $

COMMENT=	Emacs Lisp-like runtime library

SHARED_ONLY=	Yes

VERSION=	0.92.3
DISTNAME=	librep-${VERSION}

SHARED_LIBS +=  rep                  14.0     # .16.0

CATEGORIES=	lang

HOMEPAGE=	http://librep.sourceforge.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=           http://download.tuxfamily.org/librep/
EXTRACT_SUFX=           .tar.xz

WANTLIB=		c gdbm gmp ffi m ncurses pthread readline

MODULES=		devel/gettext
LIB_DEPENDS=		databases/gdbm \
			devel/gmp \
			devel/libffi

USE_GMAKE=		Yes

MAKE_FLAGS=		rep_LIBTOOL=${LIBTOOL}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--with-aclocaldir=${PREFIX}/share/aclocal

# -pthread is needed for opening libglib-2.0:
# rep:/usr/local/lib/libglib-2.0.so.3200.0: undefined symbol 'pthread_mutex_trylock'
# lazy binding failed!
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -pthread" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl -pthread"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/rep-xgettext.jl

# The bundled libtool gets installed by default, override it by installing
# the ports version directly.
post-install:
	${INSTALL_SCRIPT} ${LIBTOOL} ${PREFIX}/lib/rep/

.include <bsd.port.mk>
