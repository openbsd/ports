COMMENT =		version control system with git compatibility backend

V =			0.25.0
PKGNAME =		jujutsu-$V
REVISION =		0

DIST_TUPLE =		github jj-vcs jj v$V .

CATEGORIES =		devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto m ssh2 ssl z zstd

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

LIB_DEPENDS =		archivers/zstd \
			security/libssh2

# Use vendored version until https://github.com/rust-lang/git2-rs/issues/1109
MODCARGO_CRATES_KEEP=	libgit2-sys
#MAKE_ENV =		LIBGIT2_NO_VENDOR=1

post-build:
	${WRKBUILD}/target/release/jj util mangen > ${WRKBUILD}/jj.1.tmp
	mv ${WRKBUILD}/jj.1.tmp ${WRKBUILD}/jj.1

post-install:
	${INSTALL_MAN} ${WRKBUILD}/jj.1 ${PREFIX}/man/man1

MODCARGO_INSTALL_TARGET_PATHS = cli

.include "crates.inc"

.include <bsd.port.mk>
