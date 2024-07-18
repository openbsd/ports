COMMENT =		OCaml source-based package manager

CATEGORIES =		sysutils devel

V =			2.2.0
PKGNAME =		opam-${V}
DISTNAME =		opam-full-${V}
DISTFILES =		${DISTNAME}-2${EXTRACT_SUFX} #remove on next update

SITES =			https://github.com/ocaml/opam/releases/download/${V}/

HOMEPAGE =		https://opam.ocaml.org/

MAINTAINER =		Christopher Zimmermann <chrisz@openbsd.org>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		lang/ocaml \
			archivers/bzip2

RUN_DEPENDS =		archivers/unzip \
			archivers/bzip2 \
			archivers/gtar \
			devel/gpatch \
			devel/gmake \
			net/curl

TEST_DEPENDS =		textproc/gdiff \
			archivers/gtar \
			net/wget

USE_GMAKE =		Yes

CONFIGURE_ENV +=	CFLAGS="${CFLAGS}" \
			LDFLAGS="${LDFLAGS}"
CONFIGURE_STYLE =	gnu autoreconf no-autoheader
CONFIGURE_ARGS =	--with-vendored-deps
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16

ALL_TARGET =		lib-ext all
INSTALL_TARGET =	install
TEST_TARGET =		tests

docdir =		${PREFIX}/share/doc/opam

post-install:
	${INSTALL_DATA_DIR} ${docdir}
	${INSTALL_DATA} \
		${WRKSRC}/{CHANGES,README.md} \
		${WRKSRC}/doc/design/* \
		${docdir}/
	${INSTALL_DATA_DIR} ${docdir}/pages
	${INSTALL_DATA} ${WRKSRC}/doc/pages/*.md ${docdir}/pages

pre-test:
	ln -fs ${LOCALBASE}/bin/gdiff ${WRKDIR}/bin/diff
	ln -fs ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar

.include <bsd.port.mk>
