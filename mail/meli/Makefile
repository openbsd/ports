COMMENT =		terminal mail client

GH_ACCOUNT =		meli
GH_PROJECT =		meli
GH_TAGNAME =		v0.8.11

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS = sparc64
# error[E0308]: mismatched types                                  --> melib/src/backends/notmuch.rs:82:13
ONLY_FOR_ARCHS = ${LP64_ARCHS}

CATEGORIES =		mail

HOMEPAGE =	https://meli.delivery/
# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
MODCARGO_FEATURES +=	jmap
MODCARGO_INSTALL_TARGET_PATHS =	meli
MODCARGO_CRATES_UPDATE += time time-core deranged
MODCARGO_CRATES_KEEP += libsqlite3-sys

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

LIB_DEPENDS =	net/curl

WANTLIB +=	${MODCARGO_WANTLIB} crypto curl m ssl
PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli.conf.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli-themes.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/meli/docs/meli.7 ${PREFIX}/man/man7/
	cp -r ${WRKSRC}/meli/docs/samples ${PREFIX}/share/examples/meli/

.include <bsd.port.mk>
