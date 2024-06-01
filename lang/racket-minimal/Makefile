BROKEN-i386 =		compiling ChezScheme/s/format.ss nonrecoverable invalid memory reference
BROKEN-sparc64 =	racket-v.boot environment-variables-ref: contract violation

ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 mips64el powerpc powerpc64 sparc64

COMMENT =		multi-paradigm programming language

V =			8.13
PKGNAME =		racket-minimal-$V
DISTFILES =		racket-minimal-$V-src-builtpkgs${EXTRACT_SUFX}
DISTFILES.boot = 	racket-openbsd-2${EXTRACT_SUFX}

CATEGORIES =		lang
HOMEPAGE =		https://racket-lang.org/
MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# Racket Minimal is MIT or Apache 2, "at your option".
# However, the interpreter uses code from external projects with
# different licenses: https://github.com/racket/racket/blob/master/LICENSE
PERMIT_PACKAGE =	Yes

SITES =		https://mirror.racket-lang.org/installers/${V}/ \
		https://users.cs.utah.edu/plt/installers/${V}/ \
		https://plt.cs.northwestern.edu/racket-mirror/${V}/ \
		https://mirror.csclub.uwaterloo.ca/racket/racket-installers/${V}/ \
		https://racket.infogroep.be/${V}/ \
		http://pre-release.racket-lang.org/installers/ \
		http://pre.racket-lang.org/release/installers/ \
		http://pre.racket-lang.org/installers/ \
		https://download.tuxfamily.org/jod/lang/racket/ \
		ftp://download.tuxfamily.org/jod/lang/racket/ \
		https://users.cs.utah.edu/plt/snapshots/current/installers/ \
		http://plt.eecs.northwestern.edu/snapshots/current/installers/

SITES.boot =	https://download.tuxfamily.org/jod/lang/racket/ \
		ftp://download.tuxfamily.org/jod/lang/racket/
EXTRACT_SUFX =		.tgz

LIB_DEPENDS =		archivers/lz4 \
			converters/libiconv \
			databases/sqlite3 \
			devel/libffi>=3.0.9p2 \
			devel/mpfr \
			devel/uuid

WANTLIB += c ffi iconv m pthread curses ossp-uuid lz4 z
# Loaded using FFI:
# sqlite3 required by the documentation generator
# mpfr required by the core tests
WANTLIB += mpfr sqlite3

WRKDIST =		${WRKDIR}/racket-$V
WRKSRC =		${WRKDIST}/src

# The tests are installed from raco as a package
NO_TEST =		Yes
USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-libffi \
			--enable-pthread \
			--enable-iconv \
			--enable-curses \
			--enable-csdefault \
			--enable-libz \
			--enable-liblz4 \
			--enable-lt=${LIBTOOL}
# - disable "docs" to reduce the number of deps and the build time
# - The installation of shared libraries is not recommended.
CONFIGURE_ARGS +=	--disable-docs \
			--disable-libs \
			--disable-shared \
			--disable-standalone

CONFIGURE_ENV +=	LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib ${LDFLAGS_WXNEEDED} ${LDFLAGS_NOBTCFI}" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlld}
# LLVM strip removes too much (at least as of 13.x and 15.x).
CONFIGURE_ENV +=	ac_cv_prog_STRIP="strip --keep-section=.rackboot"
.endif

FLAVORS =		pb
FLAVOR ?=

# - Use portable bitcode where there is not native support.
# - CS without -pb requires wxneeded.
.if ${FLAVOR:Mpb}
CONFIGURE_ARGS +=	--enable-pb
.elif ${MACHINE_ARCH} == "amd64"
USE_NOBTCFI =		Yes
USE_WXNEEDED =		Yes
LDFLAGS_WXNEEDED =	-Wl,-z,wxneeded
LDFLAGS_NOBTCFI =	-Wl,-z,nobtcfi
.elif ${MACHINE_ARCH} == "powerpc64" || ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS +=	--enable-pb \
			--enable-mach=tpb64b
.elif ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ARGS +=	--enable-pb \
			--enable-mach=tpb32b
.elif ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "mips64el"
CONFIGURE_ARGS +=	--enable-pb \
			--enable-mach=tpb64l
.elif ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	--enable-pb \
			--enable-mach=tpb32l
.else
CONFIGURE_ARGS +=	--enable-pb
.endif

do-build:
	ulimit -s 12288 && cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} ${MAKE_FLAGS} ${ALL_TARGET}

post-install:
	@find ${PREFIX} -type f -name '*.orig' -delete
	@perl -i -pe 's/installation-name . "snapshot"/installation-name . "$V"/g' ${WRKINST}/etc/racket/config.rktd
	@mv ${WRKINST}/etc/racket ${PREFIX}/share/examples
	@cp ${WRKDIR}/racket-openbsd/racket-user-bin-paths ${PREFIX}/bin
	@cp ${WRKDIR}/racket-openbsd/racket-system-info ${PREFIX}/bin

.include <bsd.port.mk>
