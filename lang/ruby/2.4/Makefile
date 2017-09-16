# $OpenBSD: Makefile,v 1.6 2017/09/16 22:42:37 jeremy Exp $

COMMENT-main =		object oriented script language with threads
COMMENT-gdbm =		gdbm interface for ruby
COMMENT-ri_docs =	ri documentation files for ruby

VERSION =		2.4.2
RUBYLIBREV =		2.4
DISTNAME =		ruby-${VERSION}

SHARED_LIBS =		ruby24	2.0
PKGNAME-main =		ruby-${VERSION}
PKGNAME-gdbm =		ruby24-gdbm-${VERSION}
PKGNAME-ri_docs =	ruby24-ri_docs-${VERSION}

PKG_ARCH-ri_docs =	*
WANTLIB-ri_docs =	# empty

NEXTVER =		2.5
PKGSPEC-main =		ruby->=${RUBYLIBREV},<${NEXTVER}

CONFIGURE_ARGS =	--program-suffix=24 \
			--with-soname=ruby24 \
			--with-ruby-version=minor \
			--with-mantype=doc \
			--enable-pthread \
			--enable-ipv6 \
			--without-bundled-libffi \
			--disable-option-checking

CONFIGURE_ENV =		LIBruby24_VERSION=${LIBruby24_VERSION} \
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

PSEUDO_FLAVORS=		no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm -ri_docs
.include <bsd.port.arch.mk>

WANTLIB-gdbm =		c m gdbm gmp pthread ruby24
LIB_DEPENDS-gdbm =	databases/gdbm \
			devel/gmp \
			lang/ruby/${REV},-main>=${VERSION},<${NEXTVER}
RUN_DEPENDS-gdbm =

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

SUBST_VARS +=		RUBYLIBREV

TEST_DEPENDS =		${FULLPKGNAME-main}:${BUILD_PKGPATH}

post-extract:
	rm -rf ${WRKSRC}/ext/fiddle/libffi-* ${WRKSRC}/tool/downloader.rb

# cc(1) uses too much ram to build ext/ripper/ripper.c
# XXX remove arch if vmparam.h + login.conf give more than 1024M to pbuild
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
CFLAGS_OVERRIDE =	-O1
.endif
pre-configure:
	sed -i 's/%%CFLAGS_OVERRIDE%%/${CFLAGS_OVERRIDE}/g' \
	    ${WRKSRC}/ext/ripper/depend

pre-install:
	find ${WRKSRC} -name '*.orig' -print0 | xargs -0r rm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ruby \
		${PREFIX}/lib/ruby/gems/${RUBYLIBREV}/extensions/${SUB} \
		${PREFIX}/lib/ruby/gems/${RUBYLIBREV}/extensions/${SUB}/${RUBYLIBREV}

post-install:
	${FIX_RBCONFIG}

# 16984 tests, 2242211 assertions, 1 failures, 5 errors, 107 skips
do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q"

.include <bsd.port.mk>
