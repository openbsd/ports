# $OpenBSD: Makefile,v 1.1 2010/09/23 21:58:50 jeremy Exp $

COMMENT-main=		object oriented script language with threads
COMMENT-iconv=		libiconv interface for ruby
COMMENT-gdbm=		gdbm interface for ruby
COMMENT-tk=		tk interface for ruby

VERSION=		1.8.7
PATCHLEVEL=		302

SHARED_LIBS=		ruby18 0.0
PKGNAME-main=		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-iconv=		ruby-iconv-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm=		ruby-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk=		ruby-tk-${VERSION}.${PATCHLEVEL}

CONFIGURE_ARGS=		--program-suffix=18 \
			--enable-ipv6 \
			--with-dbm-type=bogus \
			--with-opt-dir="${LOCALBASE}" \
			--disable-option-checking

CONFIGURE_ENV=		LIBruby18_VERSION=${LIBruby18_VERSION}

MODULES=		converters/libiconv

WANTLIB-main= 		c m readline termcap util crypto ncurses ssl z
LIB_DEPENDS-main=
RUN_DEPENDS-main=

PSEUDO_FLAVORS= 	no_x11
FLAVOR?=

MULTI_PACKAGES=		-main -iconv -gdbm

WANTLIB-iconv=		c m ruby18
LIB_DEPENDS-iconv=	${MODLIBICONV_LIB_DEPENDS} \
			:ruby->=1.8,<=1.9:lang/ruby/${REV},-main
RUN_DEPENDS-iconv=	${MODLIBICONV_RUN_DEPENDS}

WANTLIB-gdbm=		c gdbm m ruby18
LIB_DEPENDS-gdbm=	gdbm.>=3::databases/gdbm \
			:ruby->=1.8,<=1.9:lang/ruby/${REV},-main
RUN_DEPENDS-gdbm=       

.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk=		X11 c m ruby18 tcl85 tk85
LIB_DEPENDS-tk=		:tk->=8.5,<8.6:x11/tk/8.5 \
			:ruby->=1.8,<=1.9:lang/ruby/${REV},-main
RUN_DEPENDS-tk=		
.endif

# Known regression failures in OpenSSL extension on sparc64
# Known regression failure in IO.readpartial on all arch
# Known regression failure in test_connection_refused_in_request on all arch
REGRESS_DEPENDS=	:ruby->=1.8,<=1.9:${BUILD_PKGPATH}

.include <bsd.port.mk>
