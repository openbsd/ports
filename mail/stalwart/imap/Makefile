COMMENT =		IMAP4-to-JMAP proxy

GH_PROJECT =		imap-server
REVISION =		5

HOMEPAGE =	https://imap.stalw.art/

.include "crates.inc"

# added manually here because of Cargo.toml patches...
# make modcargo-gen-creates will still output them so filter them out
MODCARGO_CRATES +=	jmap-client	0.2.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	mail-parser	0.7.0	# Apache-2.0 OR MIT
MODCARGO_CRATES +=	reqwest		0.11.11 # MIT/Apache-2.0

WANTLIB += c c++abi pthread

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/stalwart/imap
	${SUBST_CMD} -c ${WRKSRC}/resources/config/config.yml ${PREFIX}/share/examples/stalwart/imap/config.yml

.include <bsd.port.mk>
