# $OpenBSD: Makefile,v 1.1.1.1 2019/01/14 16:13:05 jeremy Exp $

VERSION =		2.6.0
DISTNAME =		ruby-${VERSION}
SHARED_LIBS =		ruby26	0.0
NEXTVER =		2.7

MASTER_SITES0 =		https://svn.ruby-lang.org/cgi-bin/viewvc.cgi/branches/ruby_2_6/
PATCHFILES =		ruby26-lib-net-protocol.patch{lib/net/protocol.rb?r1=66799\&r2=66798\&pathrev=66799\&view=patch}:0 \
			ruby26-addr2line.patch{addr2line.c?r1=66800\&r2=66799\&pathrev=66800\&view=patch}:0 \
			ruby26-random.patch{random.c?r1=66729\&r2=66728\&pathrev=66729\&view=patch}:0
PATCH_DIST_STRIP =	-p2

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

# Remove after 2.6.1
BUILD_DEPENDS =		archivers/gtar
TAR =			gtar

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
