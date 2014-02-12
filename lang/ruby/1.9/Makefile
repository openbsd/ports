# $OpenBSD: Makefile,v 1.43 2014/02/12 22:41:43 jeremy Exp $

BROKEN-alpha =		miniruby abort trap when generating rdoc

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for ruby
COMMENT-dbm =		Berkley DB interface for ruby
COMMENT-tk =		tk interface for ruby
COMMENT-ri_docs =	ri documentation files for ruby

VERSION =		1.9.3
PATCHLEVEL =		484
RUBYLIBREV =		1.9.1

SHARED_LIBS =		ruby19 1.1
PKGNAME-main =		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm =		ruby-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-dbm =		ruby-dbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk =		ruby-tk-${VERSION}.${PATCHLEVEL}
PKGNAME-ri_docs =	ruby-ri_docs-${VERSION}.${PATCHLEVEL}

PKG_ARCH-ri_docs =	*
WANTLIB-ri_docs =	# empty

REVISION-main =		0

PKGSPEC-main =		ruby->=1.9,<1.10

CONFIGURE_ARGS =	--program-suffix=19 \
			--with-soname=ruby19 \
			--enable-pthread \
			--enable-ipv6 \
			--disable-option-checking

CONFIGURE_ENV =		LIBruby19_VERSION=${LIBruby19_VERSION} \
			ac_cv_prog_DOXYGEN="" \
			ac_cv_prog_DOT=""

ALL_TARGET =		V=1 main
INSTALL_TARGET =	V=1 install-nodoc

MODULES =		converters/libiconv
USE_GROFF =		Yes

WANTLIB-main =		c crypto ffi m ncurses ncursesw pthread readline ssl \
			termcap util yaml z ${MODLIBICONV_WANTLIB}
LIB_DEPENDS-main =	${MODLIBICONV_LIB_DEPENDS} \
			devel/libyaml \
			devel/libffi
RUN_DEPENDS-main =	${MODLIBICONV_RUN_DEPENDS}

PSEUDO_FLAVORS=		no_x11 no_ri_docs
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Msparc} || ${MACHINE_ARCH:Mvax}
FLAVOR?=		no_ri_docs
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm -dbm

WANTLIB-gdbm =		c m gdbm pthread ruby19
LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<1.10
RUN_DEPENDS-gdbm =	

WANTLIB-dbm =		c m pthread ruby19
LIB_DEPENDS-dbm =	lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<1.10
RUN_DEPENDS-dbm =	
 
.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c m pthread ruby19 tcl85 tk85
LIB_DEPENDS-tk =	tk->=8.5,<8.6:x11/tk/8.5 \
			lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<1.10
RUN_DEPENDS-tk =	
.endif

.if !${FLAVOR:Mno_ri_docs}
MULTI_PACKAGES +=	-ri_docs
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

SUBST_VARS +=		RUBYLIBREV

TEST_DEPENDS =	${FULLPKGNAME-main}:${BUILD_PKGPATH}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby

do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all

.include <bsd.port.mk>
