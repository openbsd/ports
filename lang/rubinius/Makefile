# $OpenBSD: Makefile,v 1.25 2013/04/22 19:13:40 landry Exp $

SHARED_ONLY=	Yes

BROKEN-sparc64 = vm segfaults when building openssl extension
BROKEN-mips64 = no atomics for this arch
BROKEN-hppa = no atomics for this arch
BROKEN-mips64el = no atomics for this arch

COMMENT =	Ruby virtual machine and core library

V=		1.2.4
DISTNAME =	rubinius-${V}-20110705
PKGNAME =	rubinius-$V
REVISION =	3

CATEGORIES =	lang lang/ruby

HOMEPAGE =	http://rubini.us/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto curses db gdbm m pthread readline ssl stdc++ \
		${MODRUBY_WANTLIB}
MODRUBY_REV=	1.8

MASTER_SITES =	http://asset.rubini.us/

BUILD_DEPENDS =	devel/bison \
		devel/ruby-rake \
		devel/libffi
LIB_DEPENDS =	databases/gdbm \
		databases/db/v4 \
		${MODRUBY_LIB_DEPENDS}
MODULES =	lang/ruby

USE_GMAKE =	Yes

RBX_ARCH =	${MACHINE_ARCH}-openbsd
RAKE_VER =	0.8.7
RAKE_COMPILER_VER = 0.6.0
RDOC_VER =	2.5.1
RUBY_DEBUG_VER = 0.10.47
SUBST_VARS=	V RAKE_VER RAKE_COMPILER_VER RDOC_VER RUBY_DEBUG_VER RBX_ARCH

WRKDIST=	${WRKDIR}/rubinius-${V}

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-DOPENSSL_NO_STATIC_ENGINE -I${LOCALBASE}/include" \
			RELEASE=1
MAKE_ENV +=		CC="${CC}"

do-configure:
	${SUBST_CMD} ${WRKSRC}/rakelib/blueprint.rb
	cd ${WRKSRC} && ${SETENV} ${CONFIGURE_ENV} ${MAKE_ENV} ${RUBY} configure \
		--prefix=${PREFIX}/lib/rubinius --skip-prebuilt --rake=${RAKE}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RAKE} build

do-install:
	cd ${WRKSRC} && FAKEROOT=${WRKINST} ${RAKE} install
	ln -s ${TRUEPREFIX}/lib/rubinius/bin/rbx ${PREFIX}/bin/rbx
	mkdir ${PREFIX}/lib/rubinius/gems/1.8/{,cache,doc,gems,specifications}
	for dir in sitelibdir sitearchdir; do \
		mkdir -p ${WRKINST}/`RBX_RUNTIME=${PREFIX}/lib/rubinius/runtime \
		RBX_LIB=${PREFIX}/lib/rubinius/lib \
		${PREFIX}/lib/rubinius/bin/rbx -rrbconfig -e \
		"puts RbConfig::CONFIG['$$dir']"`; done

# 45/56 failures in mspec on i386/amd64, most of which are due to lacking
# Fiber support
do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${RAKE} vm:test
	cd ${WRKSRC} && RUBY=${RUBY} ${RUBY} mspec/bin/mspec ci -f s

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
