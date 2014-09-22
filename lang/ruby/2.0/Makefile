# $OpenBSD: Makefile,v 1.14 2014/09/22 15:14:48 jeremy Exp $

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for ruby
COMMENT-tk =		tk interface for ruby
COMMENT-ri_docs =	ri documentation files for ruby

VERSION =		2.0.0
PATCHLEVEL =		576
RUBYLIBREV =		2.0
DISTNAME =		ruby-${VERSION}-p${PATCHLEVEL}

SHARED_LIBS =		ruby20	0.1
PKGNAME-main =		ruby-${VERSION}.${PATCHLEVEL}
PKGNAME-gdbm =		ruby20-gdbm-${VERSION}.${PATCHLEVEL}
PKGNAME-tk =		ruby20-tk-${VERSION}.${PATCHLEVEL}
PKGNAME-ri_docs =	ruby20-ri_docs-${VERSION}.${PATCHLEVEL}

PKG_ARCH-ri_docs =	*
WANTLIB-ri_docs =	# empty

PKGSPEC-main =		ruby->=2.0,<2.1

BUILD_DEPENDS =		shells/bash

CONFIGURE_ARGS =	--program-suffix=20 \
			--with-soname=ruby20 \
			--with-ruby-version=minor \
			--enable-pthread \
			--enable-ipv6 \
			--disable-option-checking

CONFIGURE_ENV =		LIBruby20_VERSION=${LIBruby20_VERSION} \
			ac_cv_prog_DOXYGEN="" \
			ac_cv_prog_DOT=""

CONFIGURE_SCRIPT =	${LOCALBASE}/bin/bash ./configure

ALL_TARGET =		V=1 main
INSTALL_TARGET =	V=1 install-nodoc

USE_GROFF =		Yes

WANTLIB-main =		c crypto ffi m ncurses ncursesw pthread readline ssl \
			termcap util yaml z
LIB_DEPENDS-main =	devel/libyaml \
			devel/libffi

PSEUDO_FLAVORS=		no_x11 no_ri_docs
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Msparc} || ${MACHINE_ARCH:Mvax} || \
	${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm

WANTLIB-gdbm =		c m gdbm pthread ruby20
LIB_DEPENDS-gdbm =	databases/gdbm \
			lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<2.1
RUN_DEPENDS-gdbm =

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${PREFIX}/include/tcl8.5 \
			--with-tk-include=${PREFIX}/include/tk8.5 \
			--with-tcllib=tcl85 \
			--with-tklib=tk85 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c m pthread ruby20 tcl85 tk85
LIB_DEPENDS-tk =	tk->=8.5,<8.6:x11/tk/8.5 \
			lang/ruby/${REV},-main>=${VERSION}.${PATCHLEVEL},<2.1
RUN_DEPENDS-tk =
.endif

.if !${FLAVOR:Mno_ri_docs}
MULTI_PACKAGES +=	-ri_docs
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

SUBST_VARS +=		RUBYLIBREV

TEST_DEPENDS =		${FULLPKGNAME-main}:${BUILD_PKGPATH}

pre-install:
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0 rm

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby

do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q -x test/ruby/test_io.rb -x test/net/http/test_http.rb"

.include <bsd.port.mk>
