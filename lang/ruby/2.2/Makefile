# $OpenBSD: Makefile,v 1.15 2016/07/15 15:53:05 jeremy Exp $

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for ruby
COMMENT-tk =		tk interface for ruby
COMMENT-ri_docs =	ri documentation files for ruby

VERSION =		2.2.5
RUBYLIBREV =		2.2
DISTNAME =		ruby-${VERSION}

SHARED_LIBS =		ruby22	1.1
PKGNAME-main =		ruby-${VERSION}
PKGNAME-gdbm =		ruby22-gdbm-${VERSION}
PKGNAME-tk =		ruby22-tk-${VERSION}
PKGNAME-ri_docs =	ruby22-ri_docs-${VERSION}

REVISION-main =		1
PKG_ARCH-ri_docs =	*
WANTLIB-ri_docs =	# empty

NEXTVER =		2.3
PKGSPEC-main =		ruby->=${RUBYLIBREV},<${NEXTVER}

CONFIGURE_ARGS =	--program-suffix=22 \
			--with-soname=ruby22 \
			--with-ruby-version=minor \
			--with-mantype=doc \
			--enable-pthread \
			--enable-ipv6 \
			--without-bundled-libffi \
			--disable-option-checking

CONFIGURE_ENV =		LIBruby22_VERSION=${LIBruby22_VERSION} \
			ac_cv_prog_DOXYGEN="" \
			ac_cv_prog_DOT="" \
			DLDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV =		DLDFLAGS="-I${LOCALBASE}/lib"

ALL_TARGET =		V=1 main
INSTALL_TARGET =	V=1 install-nodoc

WANTLIB-main =		c crypto ffi gmp m ncurses pthread readline ssl \
			util yaml z
LIB_DEPENDS-main =	devel/gmp \
			devel/libyaml \
			devel/libffi

PSEUDO_FLAVORS=		no_tk no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa} || ${MACHINE_ARCH:Msparc} || ${MACHINE_ARCH:Mvax}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm -tk -ri_docs
.include <bsd.port.arch.mk>

WANTLIB-gdbm =		c m gdbm gmp pthread ruby22
LIB_DEPENDS-gdbm =	databases/gdbm \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
RUN_DEPENDS-gdbm =

.if ${BUILD_PACKAGES:M-tk}
CONFIGURE_ARGS+=	--with-tcl-include=${LOCALBASE}/include/tcl8.5 \
			--with-tk-include=${LOCALBASE}/include/tk8.5 \
			--with-tcllib=tcl85 \
			--with-tklib=tk85 \
			--with-X11-dir=${X11BASE}
WANTLIB-tk =		X11 c gmp m pthread ruby22 tcl85 tk85
LIB_DEPENDS-tk =	tk->=8.5,<8.6:x11/tk/8.5 \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
RUN_DEPENDS-tk =
.endif

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

SUBST_VARS +=		RUBYLIBREV

TEST_DEPENDS =		${FULLPKGNAME-main}:${BUILD_PKGPATH}

post-extract:
	rm -rf ${WRKSRC}/ext/fiddle/libffi-*

pre-install:
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0r rm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby

post-install:
	${FIX_RBCONFIG}

do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q -x test/ruby/test_io.rb \
		-x test/net/http/test_http.rb"

.include <bsd.port.mk>
