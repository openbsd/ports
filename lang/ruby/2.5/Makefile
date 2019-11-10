# $OpenBSD: Makefile,v 1.12 2019/11/10 13:50:00 jeremy Exp $

VERSION =		2.5.7
SHARED_LIBS =		ruby25	0.0
NEXTVER =		2.6

REVISION-main =		0

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

post-extract:
	${POST_EXTRACT}

pre-configure:
	${FIX_RIPPER}

pre-install:
	${PRE_INSTALL}

post-install:
	${FIX_RBCONFIG}

# 17372 tests, 2249026 assertions, 2 failures, 4 errors, 84 skips
do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	-cd ${WRKSRC} && make test-spec SPECOPTS="-f s"
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q"

.include <bsd.port.mk>
