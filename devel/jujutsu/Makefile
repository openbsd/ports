COMMENT =		version control system with git compatibility backend

V =			0.25.0
PKGNAME =		jujutsu-$V
REVISION =		1

DIST_TUPLE =		github jj-vcs jj v$V .

CATEGORIES =		devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto git2 m ssh2 ssl zstd

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

LIB_DEPENDS =		archivers/zstd \
			devel/libgit2/libgit2 \
			security/libssh2

MAKE_ENV =		LIBGIT2_NO_VENDOR=1

post-build:
	${WRKBUILD}/target/release/jj util mangen > ${WRKBUILD}/jj.1.tmp
	mv ${WRKBUILD}/jj.1.tmp ${WRKBUILD}/jj.1

post-install:
	${INSTALL_MAN} ${WRKBUILD}/jj.1 ${PREFIX}/man/man1

MODCARGO_INSTALL_TARGET_PATHS = cli

.include "crates.inc"

.include <bsd.port.mk>
