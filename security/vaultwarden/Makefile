BROKEN-sparc64 =        ring-0.16.20 does not build on sparc64

COMMENT =		unofficial bitwarden compatible server

GH_ACCOUNT =		dani-garcia
GH_PROJECT =		vaultwarden
GH_TAGNAME =		1.24.0

CATEGORIES =		security

# GPL-3.0
PERMIT_PACKAGE =	Yes

FLAVORS =		mysql postgresql
FLAVOR ?=

WANTLIB +=		c c++abi crypto m pthread ssl

MASTER_SITES7 =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=		vaultwarden-${GH_TAGNAME}.vendor.tgz:7

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

RUN_DEPENDS =		www/vaultwarden-web

MODCARGO_CRATES_SQLITE3_BUNDLED = Yes
MODCARGO_FEATURES =	sqlite
.if ${FLAVOR:Mmysql}
MODCARGO_FEATURES +=	mysql
WANTLIB +=		mariadb
LIB_DEPENDS +=		databases/mariadb
.endif
.if ${FLAVOR:Mpostgresql}
MODCARGO_FEATURES +=	postgresql
WANTLIB +=		pq
LIB_DEPENDS +=		databases/postgresql
.endif

SUBST_VARS +=		WRKSRC VARBASE

post-configure:
	mv ${WRKDIR}/myvendordir ${WRKSRC}
	${SUBST_CMD} -m 644 -c ${FILESDIR}/config.vendor ${WRKDIR}/config.vendor
	cat ${WRKDIR}/config.vendor >> ${WRKDIR}/.cargo/config

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vaultwarden
	${INSTALL_DATA} ${WRKSRC}/.env.template ${PREFIX}/share/doc/vaultwarden
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/vaultwarden ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
