# $OpenBSD: Makefile,v 1.18 2019/08/30 15:56:31 jeremy Exp $

VERSION =		2.4.7
SHARED_LIBS =		ruby24	2.0
NEXTVER =		2.5

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

# 16984 tests, 2242211 assertions, 1 failures, 5 errors, 107 skips
do-test:
	-cd ${WRKSRC} && make test-sample
	-cd ${WRKSRC} && make btest-ruby
	cd ${WRKSRC} && make test-all TESTOPTS="-v -q"

.include <bsd.port.mk>
