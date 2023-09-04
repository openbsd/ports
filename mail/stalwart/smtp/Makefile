COMMENT =		SMTP server

GH_PROJECT =		smtp-server
GH_TAGNAME =		v0.1.2
REVISION =		1

HOMEPAGE =	https://smtp.stalw.art/

.include "crates.inc"

# added manually here because of Cargo.toml patches...
# make modcargo-gen-creates will still output them so filter them out
MODCARGO_CRATES +=	mail-auth	0.3.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	mail-send	0.3.2	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	mail-parser	0.8.2	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	mail-builder	0.2.5	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	smtp-proto	0.1.1	# AGPL-3.0-only
MODCARGO_CRATES +=	sieve-rs	0.2.1	# AGPL-3.0-only
# needs 0.3.0 per https://github.com/stalwartlabs/sieve/commit/3ae7364c4da991533e91f0df6992e1129518848d

MODCARGO_CRATES_KEEP += libsqlite3-sys
BUILD_DEPENDS = devel/protobuf
LIB_DEPENDS =	archivers/zstd \
		archivers/bzip2
WANTLIB += bz2 c c++abi m pthread zstd

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalwart/smtp
	${SUBST_CMD} -c ${WRKSRC}/resources/config/config.toml ${PREFIX}/share/examples/stalwart/smtp/config.toml

.include <bsd.port.mk>
