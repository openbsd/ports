ONLY_FOR_ARCHS =	aarch64 amd64 arm i386 mips64el powerpc powerpc64 sparc64

COMMENT =		multi-paradigm programming language

V =			8.6
REVISION =		2
PKGNAME =		racket-minimal-$V
DISTFILES =		racket-minimal-$V-src-builtpkgs${EXTRACT_SUFX} \
			racket-openbsd-2${EXTRACT_SUFX}

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
			https://download.tuxfamily.org/jod/lang/racket/ \
			ftp://download.tuxfamily.org/jod/lang/racket/ \
			https://www.cs.utah.edu/plt/snapshots/current/installers/ \
			http://plt.eecs.northwestern.edu/snapshots/current/installers/
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

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib ${LDFLAGS_WXNEEDED}" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

FLAVORS =		pb
FLAVOR ?=

# - Use portable bitcode where there is not native support.
# - CS without -pb requires wxneeded.
.if ${FLAVOR:Mpb} || ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	--enable-pb
.else
USE_WXNEEDED =		Yes
LDFLAGS_WXNEEDED =	-Wl,-z,wxneeded
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
