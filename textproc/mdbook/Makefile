COMMENT =		create books from markdown files

GH_ACCOUNT =            rust-lang
GH_PROJECT =            mdBook
GH_TAGNAME =            v0.4.37
PKGNAME =               ${DISTNAME:L}

CATEGORIES =		textproc www
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MPL-2.0 + dependencies below.
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

# for riscv64 and powerpc64, please keep: libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	libc

.include "modules.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_RUSTFLAGS =	-C debuginfo=0

RELEASE_DIR =		${MODCARGO_TARGET_DIR}/release

# Build the docs.
pre-fake:
	cd ${WRKSRC}/guide && ${RELEASE_DIR}/mdbook build

do-install:
	${INSTALL_PROGRAM} ${RELEASE_DIR}/mdbook ${PREFIX}/bin/
	cp -r ${WRKSRC}/guide/book ${PREFIX}/share/doc/mdbook/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/mdbook/

.include <bsd.port.mk>
