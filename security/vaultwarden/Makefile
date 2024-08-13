# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

BROKEN-i386 =		raw-cpuid-10.2.0/src/lib.rs:80:37 "could not find `arch` in `self`"

COMMENT =		unofficial bitwarden compatible server

DIST_TUPLE =		github dani-garcia vaultwarden 1.32.0 .

CATEGORIES =		security

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} crypto m ssl

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP =	libsqlite3-sys
MODCARGO_FEATURES =	sqlite

RUN_DEPENDS =		www/vaultwarden-web

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

FLAVORS =		mysql postgresql
FLAVOR ?=

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

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vaultwarden
	${INSTALL_DATA} ${WRKSRC}/.env.template ${PREFIX}/share/doc/vaultwarden
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/vaultwarden ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
