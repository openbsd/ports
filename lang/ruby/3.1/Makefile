VERSION =		3.1.4
DISTNAME =		ruby-${VERSION}
SHARED_LIBS =		ruby31	0.0
NEXTVER =		3.2
PKGSPEC-main ?=         ruby->=3.1.0,<${NEXTVER}

REVISION-main =		1

SITES.p1 ?=		https://github.com/ruby/openssl/commit/

# Backport fix for fixnum*fixnum multiplication on octeon
PATCHFILES.p =		ruby-octeon-fix-2{fe6245b4309c855e6aca5b786ad50a72d53d278a}.patch
# Backport fix for ASN.1 time test
PATCHFILES.p1 +=	ruby-asn1time-fix-1{bbc540fe83195e2a54cf40fab448cea2afe4df1d}.patch
# Enable HKDF
PATCHFILES.p1 +=	ruby-enable-hkdf-1{9bdd39a7e2a5851c9090889727f54859e63a4ec9}.patch
# Fix Ed25519 support
PATCHFILES.p1 +=	ruby-ed25519-fix-1{475b2bf766d6093370e49abd5dce5436cc0034ca}.patch

PSEUDO_FLAVORS=		no_ri_docs bootstrap
# Do not build the RI docs on slow arches
.if ${MACHINE_ARCH:Malpha} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mhppa}
FLAVOR?=		no_ri_docs bootstrap
.else
FLAVOR?=
.endif

MULTI_PACKAGES =	-main -ri_docs
.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-ri_docs}
ALL_TARGET +=		rdoc
INSTALL_TARGET +=	install-doc
.endif

# Fix path for JIT compiler to not use shims in ports obj bin dir
CONFIGURE_ENV +=	ac_cv_path_MJIT_CC=`which ${CC}`

GEM_EXTENSIONS_DIR = lib/ruby/gems/${REV}/extensions/${MACHINE_ARCH:S/i386/x86/:S/amd64/x86_64/}-openbsd
SUBST_VARS += GEM_EXTENSIONS_DIR

WANTLIB-main +=	curses readline

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
