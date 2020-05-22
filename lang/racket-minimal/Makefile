# $OpenBSD: Makefile,v 1.66 2020/05/22 22:31:45 juanfra Exp $

ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 mips64el powerpc sparc64

COMMENT =		multi-paradigm programming language

V =			7.7
REVISION =		2
PKGNAME =		racket-minimal-$V
DISTFILES =		racket-minimal-$V-src-builtpkgs${EXTRACT_SUFX} \
			racket-openbsd-1${EXTRACT_SUFX}

CATEGORIES =		lang
HOMEPAGE =		https://racket-lang.org/
MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# Racket Minimal is MIT or Apache 2, "at your option".
# However, the interpreter uses code from external projects with
# different licenses: https://github.com/racket/racket/blob/master/LICENSE
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://mirror.racket-lang.org/installers/${V}/ \
			https://www.cs.utah.edu/plt/installers/${V}/ \
			https://plt.eecs.northwestern.edu/racket-mirror/${V}/ \
			http://mirror.informatik.uni-tuebingen.de/mirror/racket/${V}/ \
			http://pre-release.racket-lang.org/installers/ \
			http://pre.racket-lang.org/release/installers/ \
			http://pre.racket-lang.org/installers/ \
			https://www.cs.utah.edu/plt/snapshots/current/installers/ \
			http://plt.eecs.northwestern.edu/snapshots/current/installers/ \
			https://download.tuxfamily.org/jod/lang/racket/ \
			ftp://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		archivers/lz4 \
			converters/libiconv \
			databases/sqlite3 \
			devel/libffi>=3.0.9p2 \
			devel/mpfr \
			devel/uuid

WANTLIB += c ffi iconv m pthread
# Required by CS
WANTLIB += ossp-uuid lz4
# Loaded using FFI:
# sqlite3 required by the documentation generator
# mpfr required by the core tests
WANTLIB += mpfr sqlite3

WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src

# The tests are installed from raco as a package
NO_TEST =		Yes
SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-libffi \
			--enable-gracket \
			--enable-foreign \
			--enable-lt=${LIBTOOL}
# - "backtrace" is expensive.
#   http://article.gmane.org/gmane.comp.lang.racket.devel/6700
# - disable "docs" to reduce the number of deps and the build time
# - The installation of shared libraries is not recommended.
CONFIGURE_ARGS +=	--disable-backtrace \
			--disable-docs \
			--disable-libs \
			--disable-shared

# The signal handler used by BC to avoid wxneeded for the JIT only
# works on amd64. CS always requires wxneeded.
USE_WXNEEDED =		Yes
LDFLAGS_WXNEEDED =	-Wl,-z,wxneeded

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib ${LDFLAGS_WXNEEDED}" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

FLAVORS =		debug no_jit
FLAVOR ?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS +=	--disable-strip \
			--enable-noopt
CFLAGS += -ggdb3
.endif

# - "places" and "futures" require thread-local storage, atomic CAS and JIT
#   http://article.gmane.org/gmane.comp.lang.racket.user/16723
# - The JIT doesn't work on powerpc when TLS is enabled. "places" and
#   "futures" don't work on arm and powerpc.
#   https://github.com/racket/racket/issues/1239
# - Racket builds fine with -O2 (and -O1 and -Os) on powerpc but
#   it doesn't pass the tests.
# - CS only supports OpenBSD on amd64.
.if ${FLAVOR:Mno_jit}
ONLY_FOR_ARCHS =	arm amd64 i386 powerpc
CONFIGURE_ARGS +=	--disable-jit \
			--disable-places \
			--disable-futures
.elif ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-csdefault \
			--enable-places \
			--enable-futures
.elif ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	--enable-jit \
			--enable-places \
			--enable-futures
.elif ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS +=	--enable-jit \
			--disable-places \
			--disable-futures
.elif ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--enable-jit \
			--disable-places \
			--disable-futures
CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -O0 -Wall -Wno-unused-value" \
			CPPFLAGS="${CPPFLAGS} -O0 -Wall -Wno-unused-value"
.else
CONFIGURE_ARGS +=	--disable-jit \
			--disable-places \
			--disable-futures
.endif

# The embedded versions of BC and CS use different files
.if ${MACHINE_ARCH} == "amd64" && !${FLAVOR:Mno_jit}
PKG_ARGS +=		-Dbc=0 -Dcs=1
.else
PKG_ARGS +=		-Dbc=1 -Dcs=0
.endif


post-install:
	@find ${PREFIX} -type f -name '*.orig' -delete
	@perl -i -pe 's/installation-name . "snapshot"/installation-name . "$V"/g' ${WRKINST}/etc/racket/config.rktd
	@mv ${WRKINST}/etc/racket ${PREFIX}/share/examples
	@cp ${WRKDIR}/racket-openbsd/racket-user-bin-paths ${PREFIX}/bin

# Since 5.3.4 if __SSE_MATH__ is defined (C_COMPILER_USES_SSE) and
# MZ_TRY_EXTFLONUMS enabled, MZ_LONG_DOUBLE (extflonum) is turned on. Also
# C_COMPILER_USES_SSE turn on MZ_USE_JIT_SSE.
# "-msse -mfpmath=sse" required by extflonum on i386.
# The GNU Lightning minimum requirement for i386 is SSE2.
.if ${FLAVOR:Mno_jit} && ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	--disable-extflonum
.elif ${MACHINE_ARCH} == "i386"
# There is a bug which only happens when extflonum is enabled on i386.
# By default the build system of Racket uses "cc" as the preprocessor but
# doesn't pass the CFLAGS, so it doesn't define __SSE_MATH__ which is
# used to detect MZ_LONG_DOUBLE. If enable-extflonum is used and the
# build system can't use MZ_LONG_DOUBLE, then the build fails with the error:
# "cannot support extflonums; you may need to adjust compiler options"
# The easiest workaround is to pass the CFLAGS also as CPPFLAGS.
CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -msse -msse2 -mfpmath=sse" \
			CPPFLAGS="${CPPFLAGS} -msse -msse2 -mfpmath=sse"
CONFIGURE_ARGS +=	--enable-extflonum
.endif

.include <bsd.port.mk>
