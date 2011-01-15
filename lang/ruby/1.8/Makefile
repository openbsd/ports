# $OpenBSD: Makefile,v 1.10 2011/01/15 01:09:43 naddy Exp $

COMMENT-main=		object oriented script language with threads
COMMENT-iconv=		libiconv interface for ruby
COMMENT-gdbm=		gdbm interface for ruby
COMMENT-tk=		tk interface for ruby

VERSION=		1.8.7
PATCHLEVEL=		330

SHARED_LIBS=		ruby18 0.0
PKGNAME-main=		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-iconv=		ruby-iconv-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm=		ruby-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk=		ruby-tk-${VERSION}.${PATCHLEVEL}
REVISION-main=		0
REVISION-iconv=		0
REVISION-gdbm=		0
REVISION-tk=		0

PKGSPEC-main=		ruby->=1.8,<1.9

CONFIGURE_ARGS=		--program-suffix=18 \
			--enable-ipv6 \
			--with-dbm-type=bogus \
			--with-opt-dir="${LOCALBASE}" \
			--disable-option-checking

CONFIGURE_ENV=		LIBruby18_VERSION=${LIBruby18_VERSION}

MODULES=		converters/libiconv
USE_GROFF =		Yes

WANTLIB-main= 		c m readline termcap util crypto ncurses ssl z
LIB_DEPENDS-main=
RUN_DEPENDS-main=

PSEUDO_FLAVORS= 	no_x11
FLAVOR?=

MULTI_PACKAGES=		-main -iconv -gdbm

WANTLIB-iconv =		${MODLIBICONV_WANTLIB} c m ruby18
LIB_DEPENDS-iconv =	${MODLIBICONV_LIB_DEPENDS} \
			lang/ruby/${REV},-main
RUN_DEPENDS-iconv =	${MODLIBICONV_RUN_DEPENDS}

WANTLIB-gdbm =		c gdbm>=3 m ruby18
LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/ruby/${REV},-main
RUN_DEPENDS-gdbm =       

.if !${FLAVOR:L:Mno_x11}
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c m ruby18 tcl85 tk85
LIB_DEPENDS-tk =		tk->=8.5,<8.6:x11/tk/8.5 \
			lang/ruby/${REV},-main
RUN_DEPENDS-tk =		
.endif

# Known regression failures in OpenSSL extension on sparc64
# Known regression failure in IO.readpartial on all arch
# Known regression failure in test_connection_refused_in_request on all arch
REGRESS_DEPENDS=	${FULLPKGNAME-main}:${BUILD_PKGPATH}

.include <bsd.port.mk>
