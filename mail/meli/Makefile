COMMENT =		terminal mail client

GH_ACCOUNT =		meli
GH_PROJECT =		meli
GH_COMMIT =		3697b7d960cc9dbe602fa84f861cea854b600b73
DISTNAME =	meli-0.7.2.20221017-3697b7d{3697b7d960cc9dbe602fa84f861cea854b600b73}
PKGNAME =	meli-0.7.2pl20221017

# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

CATEGORIES =		mail

HOMEPAGE =	https://meli.delivery/
# GPLv3
PERMIT_PACKAGE =	Yes

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
MODCARGO_FEATURES +=	jmap

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

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
