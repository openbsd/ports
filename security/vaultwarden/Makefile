# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

BROKEN-i386 =		raw-cpuid-10.2.0/src/lib.rs:80:37 "could not find `arch` in `self`"

COMMENT =		unofficial bitwarden compatible server

GH_ACCOUNT =		dani-garcia
GH_PROJECT =		vaultwarden
GH_TAGNAME =		1.26.0
REVISION =		2

CATEGORIES =		security

MAINTAINER =		Aisha Tammy <openbsd@aisha.cc>

# GPL-3.0
PERMIT_PACKAGE =	Yes

FLAVORS =		mysql postgresql
FLAVOR ?=

WANTLIB +=		c c++abi crypto m pthread ssl

MASTER_SITES7 =		https://files.bsd.ac/openbsd-distfiles/
DISTFILES +=		vaultwarden-deps-${GH_TAGNAME}.tgz:7

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

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
