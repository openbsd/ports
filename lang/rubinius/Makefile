# $OpenBSD: Makefile,v 1.26 2013/10/26 23:44:58 jeremy Exp $

SHARED_ONLY=	Yes

BROKEN-sparc64 = vm segfaults when building openssl extension
BROKEN-mips64 = no atomics for this arch
BROKEN-hppa = no atomics for this arch
BROKEN-mips64el = no atomics for this arch

COMMENT =	Ruby virtual machine and core library

V=		2.1.1
EXTRACT_SUFX=	.tar.bz2
DISTNAME =	rubinius-${V}

MASTER_SITES =	http://releases.rubini.us/

CATEGORIES =	lang lang/ruby

HOMEPAGE =	http://rubini.us/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto m ncurses ncursesw pthread readline ssl stdc++
WANTLIB += termcap util yaml z

BUILD_DEPENDS =	devel/bison \
		devel/libffi \
		devel/llvm \
		devel/ruby-bundler,ruby20

MODULES =	lang/ruby
MODRUBY_REV=	2.0

USE_GMAKE =	Yes

MAKE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-DOPENSSL_NO_STATIC_ENGINE -I${LOCALBASE}/include" \
		CC="${CC}" \
		make=gmake \
		GEM_HOME=${GEM_HOME} \
		GEM_PATH=${GEM_HOME}/ruby/2.0:${LOCALBASE}/lib/ruby/gems/2.0

RBX_ARCH =	${MACHINE_ARCH}-openbsd
GEM_HOME =	${WRKSRC}/vendor/build-gems
FILEUTILS_DIR =	staging/runtime/gems/rubysl-fileutils-*/lib/rubysl/fileutils

SUBST_VARS=	RBX_ARCH

do-configure:
	mkdir -p ${GEM_HOME}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} bundle20 install \
		--local --path ${GEM_HOME}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} configure \
		--prefix=${PREFIX}/lib/rubinius --rake=${RAKE} \
		--gem=gem20 --llvm-config=${LOCALBASE}/bin/llvm-config

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} HOME=${WRKSRC} ${RAKE} build
	patch --posix ${WRKSRC}/${FILEUTILS_DIR}/fileutils.rb \
		${PATCHDIR}/fileutils.diff

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} HOME=${WRKSRC} \
		DESTDIR=${WRKINST} ${RAKE} install
	rm -r ${WRKSRC}/.rbx
	ln -s ${TRUEPREFIX}/lib/rubinius/bin/rbx ${PREFIX}/bin/rbx
	${INSTALL_DATA_DIR} ${PREFIX}/lib/rubinius/site
	${INSTALL_DATA_DIR} ${PREFIX}/lib/rubinius/site/${RBX_ARCH}

# Need to Ctrl-C after tests finish
TEST_IS_INTERACTIVE = Yes

# VM Test: Failed 1 of 652 tests
# mspec:
# amd64: 2156 files, 19068 examples, 155140 expectations, 19 failures, 0 errors
# i386:  2156 files, 19048 examples, 148858 expectations, 22 failures, 0 errors
do-test:
	-cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RAKE} vm:test
	cd ${WRKSRC} && RUBY=${RUBY} ${RUBY} mspec/bin/mspec ci -f s

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
