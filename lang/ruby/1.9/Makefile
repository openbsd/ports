# $OpenBSD: Makefile,v 1.2 2010/10/06 18:43:11 jeremy Exp $

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for Ruby
COMMENT-dbm =		Berkley DB interface for Ruby
COMMENT-tk=		tk interface for ruby

VERSION =		1.9.2
REVISION =		0
PATCHLEVEL =		0
RUBYLIBREV =		1.9.1

SHARED_LIBS =		ruby19 0.0
PKGNAME-main =		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm =		ruby-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-dbm =		ruby-dbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk =		ruby-tk-${VERSION}.${PATCHLEVEL}

CONFIGURE_ARGS =	--program-suffix=19 \
			--with-soname=ruby19 \
			--enable-pthread \
			--enable-ipv6 \
			--disable-option-checking

CONFIGURE_ENV =		LIBruby19_VERSION=${LIBruby19_VERSION}

MODULES =		converters/libiconv

WANTLIB-main =		c crypto ffi m ncurses pthread readline ssl termcap \
			util yaml z
LIB_DEPENDS-main =	${MODLIBICONV_LIB_DEPENDS} \
			::devel/libyaml \
			::devel/libffi
RUN_DEPENDS-main =	${MODLIBICONV_RUN_DEPENDS}

PSEUDO_FLAVORS=		no_x11
FLAVOR?=

MULTI_PACKAGES =	-main -gdbm -dbm

WANTLIB-gdbm =		c m gdbm ruby19
LIB_DEPENDS-gdbm =	::databases/gdbm \
			:ruby->=1.9,<=1.10:lang/ruby/${REV},-main
RUN_DEPENDS-gdbm =	

WANTLIB-dbm =		c m db ruby19
LIB_DEPENDS-dbm =	::databases/db/v4 \
			:ruby->=1.9,<=1.10:lang/ruby/${REV},-main
RUN_DEPENDS-dbm =	
 
.if !${FLAVOR:L:Mno_x11}
USE_X11=		Yes
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c m ruby19 tcl85 tk85
LIB_DEPENDS-tk =	:tk->=8.5,<8.6:x11/tk/8.5 \
			:ruby->=1.9,<=1.10:lang/ruby/${REV},-main
RUN_DEPENDS-tk =	
.endif

# Known failure in Addrinfo IPv6 UDP loopack test on all arch
# Known threading bootstraptest failures on i386 and macppc
# Known endian issues in fiddle/dl on sparc64
# Known bugs in OpenSSL extension on sparc64
REGRESS_DEPENDS =	:ruby->=1.9,<=1.10:${BUILD_PKGPATH}
SUBST_VARS +=		RUBYLIBREV

.include <bsd.port.mk>
