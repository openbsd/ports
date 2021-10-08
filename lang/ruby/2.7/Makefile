# $OpenBSD: Makefile,v 1.15 2021/10/08 14:12:36 jeremy Exp $

VERSION =		2.7.4
REVISION-main =		2
DISTNAME =		ruby-${VERSION}
SHARED_LIBS =		ruby27	0.0
NEXTVER =		2.8
PKGSPEC-main ?=         ruby->=2.7.0,<${NEXTVER}

MASTER_SITES0 =		https://github.com/ruby/ruby/commit/
# Backport fix for regression in 2.7.2+ to avoid crash in ffi_closure_free
PATCHFILES =		ruby-2.7-ffi-closure-fix{040cfc89b9a110cd0fb2abdcd35e8215b4a71f60}.patch:0
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
CONFIGURE_ENV +=	ac_cv_path_MJIT_CC=`which ${CC}` \
			rb_cv_function_name_string=__func__

WANTLIB-main +=	curses yaml-0

post-extract:
	${POST_EXTRACT}

pre-configure:
	${FIX_RIPPER}

pre-install:
	${PRE_INSTALL}

post-install:
	${FIX_RBCONFIG}

do-test:
	cd ${WRKSRC} && make check

.include <bsd.port.mk>
