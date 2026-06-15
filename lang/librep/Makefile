COMMENT=	Emacs Lisp-like runtime library

VERSION=	0.92.7
GH_ACCOUNT=	SawfishWM
GH_PROJECT=	librep
GH_TAGNAME=	librep-${VERSION}
DISTNAME=	librep-${VERSION}

SHARED_LIBS +=  rep                  14.0     # 14.0

CATEGORIES=	lang

HOMEPAGE=	https://sawfish.tuxfamily.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=  c ffi gdbm gmp iconv intl m curses pthread readline

LIB_DEPENDS=		databases/gdbm \
			devel/gmp \
			devel/libffi

USE_GMAKE=		Yes

MAKE_FLAGS=		rep_LIBTOOL=${LIBTOOL}

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS+=	--enable-static \
			--with-aclocaldir=${PREFIX}/share/aclocal
.if ${MACHINE_ARCH} == hppa
CONFIGURE_ARGS+=	--with-stack-direction=+1
.else
CONFIGURE_ARGS+=	--with-stack-direction=-1
.endif

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
