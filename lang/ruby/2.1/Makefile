# $OpenBSD: Makefile,v 1.6 2014/03/18 07:25:53 jasper Exp $

BROKEN-hppa =		miniruby abort trap when generating rdoc
BROKEN-alpha =		miniruby abort trap when generating rdoc
BROKEN-mips64 =		miniruby spins on rbconfig.rb

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for ruby
COMMENT-tk =		tk interface for ruby
COMMENT-ri_docs =	ri documentation files for ruby

VERSION =		2.1.1
RUBYLIBREV =		2.1
DISTNAME =		ruby-${VERSION}

SHARED_LIBS =		ruby21	0.0
PKGNAME-main =		ruby-${VERSION}
PKGNAME-gdbm =		ruby21-gdbm-${VERSION}
PKGNAME-tk =		ruby21-tk-${VERSION}
PKGNAME-ri_docs =	ruby21-ri_docs-${VERSION}

PKG_ARCH-ri_docs =	*
WANTLIB-ri_docs =	# empty

NEXTVER =		2.2
PKGSPEC-main =		ruby->=${RUBYLIBREV},<${NEXTVER}

CONFIGURE_ARGS =	--program-suffix=21 \
			--with-soname=ruby21 \
			--with-ruby-version=minor \
			--enable-pthread \
			--enable-ipv6 \
			--disable-option-checking

CONFIGURE_ENV =		LIBruby21_VERSION=${LIBruby21_VERSION} \
			ac_cv_prog_DOXYGEN="" \
			ac_cv_prog_DOT="" \
			DLDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV =		DLDFLAGS="-I${LOCALBASE}/lib"

ALL_TARGET =		V=1 main
INSTALL_TARGET =	V=1 install-nodoc

USE_GROFF =		Yes

WANTLIB-main =		c crypto ffi gmp m ncurses pthread readline ssl \
			util yaml z
LIB_DEPENDS-main =	devel/gmp \
			devel/libyaml \
			devel/libffi

PSEUDO_FLAVORS=		no_x11 no_ri_docs
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Msparc} || ${MACHINE_ARCH:Mvax}
FLAVOR?=		no_ri_docs
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm

WANTLIB-gdbm =		c m gdbm gmp pthread ruby21
LIB_DEPENDS-gdbm =	databases/gdbm \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
RUN_DEPENDS-gdbm =

.if !${FLAVOR:Mno_x11}
MULTI_PACKAGES+=	-tk
CONFIGURE_ARGS+=	--with-tcl-include=${LOCALBASE}/include/tcl8.5 \
			--with-tk-include=${LOCALBASE}/include/tk8.5 \
			--with-tcllib=tcl85 \
			--with-tklib=tk85 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c gmp m pthread ruby21 tcl85 tk85
LIB_DEPENDS-tk =	tk->=8.5,<8.6:x11/tk/8.5 \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
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
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q -x test/ruby/test_io.rb \
		-x test/net/http/test_http.rb"

.include <bsd.port.mk>
