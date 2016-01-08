# $OpenBSD: Makefile,v 1.7 2016/01/08 20:12:01 juanfra Exp $

PORTROACH_COMMENT =	hide pre-release versions (e.g. 6.1.90.900)
PORTROACH =		limit:!.*\.[0-9][0-9][0-9]-src-builtpkgs$$

SHARED_ONLY =		Yes

# Racket includes C fallback code for architectures without JIT support but
# nobody tests regularly this code outside of amd64 (Linux/OSX). The code
# is buggy and the devs can't fix the problems because they have not access
# to these architectures. In addition, the C code is extremely slow compared
# with the JIT.
ONLY_FOR_ARCHS =	i386 amd64 sparc64 powerpc

COMMENT =		multi-paradigm programming language

V =			6.3
REVISION =		1
PKGNAME =		racket-minimal-$V
DISTFILES =		racket-minimal-$V-src-builtpkgs${EXTRACT_SUFX} \
			racket-openbsd-1${EXTRACT_SUFX}

CATEGORIES =		lang
HOMEPAGE =		http://racket-lang.org/
MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://www.cs.utah.edu/plt/installers/${V}/ \
			http://mirror.racket-lang.org/installers/${V}/ \
			http://www.eecs.northwestern.edu/racket/${V}/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/ \
			http://racket.infogroep.be/${V}/ \
			http://pre-release.racket-lang.org/installers/ \
			http://pre.racket-lang.org/release/installers/ \
			http://pre.racket-lang.org/installers/ \
			https://www.cs.utah.edu/plt/snapshots/current/installers/ \
			http://plt.eecs.northwestern.edu/snapshots/current/installers/ \
			http://download.tuxfamily.org/jod/lang/racket/ \
			ftp://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX =		.tgz

MODULES +=		converters/libiconv

LIB_DEPENDS =		devel/libffi>=3.0.9p2

WANTLIB += c m pthread ffi
# Loaded using FFI (just a placeholder for now)
WANTLIB +=

WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src

# The tests are installed from raco as a package
NO_TEST =		Yes
SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-libffi \
			--enable-gracket \
			--enable-foreign \
			--enable-lt=${LIBTOOL}
# - "backtrace" is expensive.
#   http://article.gmane.org/gmane.comp.lang.racket.devel/6700
# - disable "docs" to reduce the number of deps and the build time
# - "places" and "futures" require thread-local storage and atomic CAS
#   http://article.gmane.org/gmane.comp.lang.racket.user/16723
# - The installation of shared libraries is not recommended.
CONFIGURE_ARGS +=	--disable-backtrace \
			--disable-docs \
			--disable-libs \
			--disable-shared \
			--disable-places \
			--disable-futures

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

FLAVORS =		debug no_jit
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--disable-strip \
			--enable-noopt
CFLAGS += -ggdb3
.endif

.if ${FLAVOR:Mno_jit}
ONLY_FOR_ARCHS =	i386 amd64 powerpc
CONFIGURE_ARGS +=	--disable-jit
.endif

post-install:
	@perl -i -pe 's/installation-name . "snapshot"/installation-name . "$V"/g' ${WRKINST}/etc/racket/config.rktd
	@mv ${WRKINST}/etc/racket ${PREFIX}/share/examples
	@cp ${WRKDIR}/racket-openbsd/racket-user-bin-paths ${PREFIX}/bin

# Since 5.3.4 if __SSE_MATH__ is defined (C_COMPILER_USES_SSE) and
# MZ_TRY_EXTFLONUMS enabled, MZ_LONG_DOUBLE (extflonum) is turned on. Also
# C_COMPILER_USES_SSE turn on MZ_USE_JIT_SSE.
# "-msse -mfpmath=sse" required by extflonum on i386.
# The GNU Lightning minimum requirement is SSE2.
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -msse -msse2 -mfpmath=sse"
CONFIGURE_ARGS +=	--enable-extflonum
.endif

.include <bsd.port.mk>
