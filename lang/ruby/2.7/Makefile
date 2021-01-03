# $OpenBSD: Makefile,v 1.9 2021/01/03 15:44:41 jcs Exp $

VERSION =		2.7.2
DISTNAME =		ruby-${VERSION}
SHARED_LIBS =		ruby27	0.0
NEXTVER =		2.8
PKGSPEC-main ?=         ruby->=2.7.0,<${NEXTVER}

REVISION-main =		2

MASTER_SITES0 =		https://github.com/ruby/ruby/commit/
# First patch: Fix copy coroutine to avoid crash on fiber usage (affects at
#              least sparc64)
# Second patch: Backport fix for regression in 2.7.2 to avoid crash in
#               ffi_closure_free
# Third patch: Backport fix for use-after-free when fiber and thread are
#              garbage collected together
PATCHFILES =		ruby-2.7-copy-coro-fix-4{9de559acc82a28bb0d912ed55cd36cf6f652ea9f}.patch:0 \
			ruby-2.7-ffi-closure-fix{040cfc89b9a110cd0fb2abdcd35e8215b4a71f60}.patch:0 \
			ruby-2.7-fiber-use-after-free-fix{9fb60672d55162a92ab7e97b000a7e277458aab1}.patch:0
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
