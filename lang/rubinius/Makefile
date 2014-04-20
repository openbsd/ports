# $OpenBSD: Makefile,v 1.29 2014/04/20 20:00:35 jeremy Exp $

SHARED_ONLY=	Yes

BROKEN-sparc64 = vm segfaults when building openssl extension
BROKEN-mips64 = no atomics for this arch
BROKEN-hppa = no atomics for this arch
BROKEN-mips64el = no atomics for this arch
BROKEN-powerpc = no atomics for this arch

COMMENT =	Ruby virtual machine and core library

V=		2.2.3
EXTRACT_SUFX=	.tar.bz2
DISTNAME =	rubinius-${V}
REVISION =	0

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

# Used when this rubinius version supports ports LLVM
#LLVM_OPTION =	--llvm-config=${LOCALBASE}/bin/llvm-config
# Otherwise
LLVM_OPTION =	--disable-llvm

OPENSSL_GEM_FILE = vendor/cache/rubysl-openssl-2.0.5.gem

do-configure:
	# Patch openssl library
	cd ${WRKSRC} && tar xf ${OPENSSL_GEM_FILE} && \
		mkdir data && \
		cd data && \
		tar ztf ../data.tar.gz > file_list && \
		tar zxf ../data.tar.gz && \
		rm -f ../data.tar.gz && \
		patch --posix ext/rubysl/openssl/ossl_rand.c \
			${PATCHDIR}/openssl_rand.diff && \
		tar zcf ../data.tar.gz -I file_list  && \
		cd .. && \
		rm -f ${OPENSSL_GEM_FILE} && \
		tar cf ${OPENSSL_GEM_FILE} metadata.gz data.tar.gz && \
		rm -rf data metadata.gz data.tar.gz checksums.yaml.gz
	mkdir -p ${GEM_HOME}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} bundle20 install \
		--local --path ${GEM_HOME}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RUBY} configure \
		--prefix=${PREFIX}/lib/rubinius --rake=${RAKE} \
		--gem=gem20 --make=gmake ${LLVM_OPTION}

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

# VM Test: Failed 1 of 650 tests
# mspec:
# amd64: 2160 files, 19266 examples, 155393 expectations, 16 failures, 1 error
# i386:  2160 files, 19243 examples, 149109 expectations, 19 failures, 1 error
do-test:
	-cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RAKE} vm:test
	cd ${WRKSRC} && RUBY=${RUBY} ${RUBY} mspec/bin/mspec ci -f s

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
