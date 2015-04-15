# $OpenBSD: Makefile,v 1.36 2015/04/15 21:58:16 jeremy Exp $

COMMENT-main=		object oriented script language with threads
COMMENT-iconv=		libiconv interface for ruby
COMMENT-gdbm=		gdbm interface for ruby
COMMENT-tk=		tk interface for ruby
COMMENT-ri_docs=	ri documentation files ruby

VERSION=		1.8.7
PATCHLEVEL=		374
RUBYLIBREV=		1.8

SHARED_LIBS=		ruby18 0.0
PKGNAME-main=		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-iconv=		ruby-iconv-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm=		ruby-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk=		ruby-tk-${VERSION}.${PATCHLEVEL}
PKGNAME-ri_docs=	ruby-ri_docs-${VERSION}.${PATCHLEVEL}

PKG_ARCH-ri_docs=	*
PKGSPEC-main=		ruby->=1.8,<1.9

REVISION-main=		4
REVISION-ri_docs=	0

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

PSEUDO_FLAVORS= 	no_x11 no_ri_docs
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Msparc} || ${MACHINE_ARCH:Mvax}
FLAVOR?=		no_ri_docs
.else
FLAVOR?=
.endif

MULTI_PACKAGES=		-main -iconv -gdbm

WANTLIB-iconv =		${MODLIBICONV_WANTLIB} c m ruby18
LIB_DEPENDS-iconv =	${MODLIBICONV_LIB_DEPENDS} \
			lang/ruby/${REV},-main
RUN_DEPENDS-iconv =	${MODLIBICONV_RUN_DEPENDS}

WANTLIB-gdbm =		c gdbm>=3 m ruby18
LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/ruby/${REV},-main
RUN_DEPENDS-gdbm =       

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c m ruby18 tcl85 tk85
LIB_DEPENDS-tk =		tk->=8.5,<8.6:x11/tk/8.5 \
			lang/ruby/${REV},-main
RUN_DEPENDS-tk =		
.endif

.if !${FLAVOR:Mno_ri_docs}
MULTI_PACKAGES +=	-ri_docs
ALL_TARGET =		all rdoc
INSTALL_TARGET =	install install-doc
.endif

# Known regression failures in OpenSSL extension on sparc64
# Known regression failure in IO.readpartial on all arch
# Known regression failure in test_connection_refused_in_request on all arch
TEST_DEPENDS=	${FULLPKGNAME-main}:${BUILD_PKGPATH}

.include <bsd.port.mk>
