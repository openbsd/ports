# $OpenBSD: Makefile,v 1.6 2019/06/25 20:25:21 sthen Exp $

VERSION =		2.6.3
DISTNAME =		ruby-${VERSION}
SHARED_LIBS =		ruby26	0.0
NEXTVER =		2.7

REVISION-main =		1
MASTER_SITES0 =		https://github.com/ruby/ruby/commit/
PATCHFILES =		1ef39d8d099f145222b9352423af16a2bab6e05b.patch:0
PATCH_DIST_STRIP =	-p1

PSEUDO_FLAVORS=		no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -gdbm -ri_docs
.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

# Fix path for JIT compiler to not use shims in ports obj bin dir
CONFIGURE_ENV +=	ac_cv_path_MJIT_CC=`which ${CC}`

WANTLIB-main += curses

post-extract:
	${POST_EXTRACT}

pre-configure:
	${FIX_RIPPER}

pre-install:
	${PRE_INSTALL}

post-install:
	${FIX_RBCONFIG}

# 20197 tests, 2280013 assertions, 12 failures, 15 errors, 76 skips
do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	-cd ${WRKSRC} && make test-spec SPECOPTS="-f s"
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q"

.include <bsd.port.mk>
