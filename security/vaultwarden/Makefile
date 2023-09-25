# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

BROKEN-i386 =		raw-cpuid-10.2.0/src/lib.rs:80:37 "could not find `arch` in `self`"

COMMENT =		unofficial bitwarden compatible server

GH_ACCOUNT =		dani-garcia
GH_PROJECT =		vaultwarden
GH_TAGNAME =		1.29.2
REVISION =		0

CATEGORIES =		security

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

# AGPLv3 only
PERMIT_PACKAGE =	Yes

FLAVORS =		mysql postgresql
FLAVOR ?=

WANTLIB +=		${MODCARGO_WANTLIB} crypto m ssl

SITES.deps =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES.deps +=	vaultwarden-deps-${GH_TAGNAME}.tgz

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

BUILD_DEPENDS =		security/rust-ring

RUN_DEPENDS =		www/vaultwarden-web

MODCARGO_CRATES_KEEP +=	libsqlite3-sys
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
