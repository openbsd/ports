COMMENT =		terminal mail client

GH_ACCOUNT =		meli
GH_PROJECT =		meli
GH_COMMIT =		2447a2cbfeaa8d6f7ec11a2a8a6f3be1ff2fea58
DISTNAME =		meli-0.7.2.20230306
PKGNAME =		meli-0.7.2pl20230306

# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64
# error[E0308]: mismatched types                                  --> melib/src/backends/notmuch.rs:82:13
ONLY_FOR_ARCHS = ${LP64_ARCHS}

CATEGORIES =		mail

HOMEPAGE =	https://meli.delivery/
# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
MODCARGO_FEATURES +=	jmap

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

BUILD_DEPENDS +=	security/rust-ring

LIB_DEPENDS =	devel/pcre2 \
		net/curl \
		databases/sqlite3

WANTLIB +=	c c++abi crypto curl m pcre2-8 pthread sqlite3 ssl
PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/meli.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/docs/meli.conf.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/docs/meli-themes.5 ${PREFIX}/man/man5/
	${INSTALL_MAN} ${WRKSRC}/docs/meli.7 ${PREFIX}/man/man7/

.include <bsd.port.mk>
