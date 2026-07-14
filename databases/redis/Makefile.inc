COMMENT ?=		persistent key-value database

CATEGORIES =		databases

HOMEPAGE =		https://redis.io/
.if !defined(GH_ACCOUNT)
SITES =			https://download.redis.io/releases/
.endif

MAINTAINER ?=		Stuart Henderson <stu.ports@spacehopper.org>

# bsd/: BSD (currently up to 7.2.x)
# main/: choose one of
#   Redis Source Available License v2 (RSALv2)
#   Server Side Public License v1 (SSPLv1)
#   GNU Affero General Public License v3 (AGPLv3)
PERMIT_PACKAGE ?=	Yes

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODULES +=		lang/tcl
TEST_DEPENDS +=		${MODTCL_BUILD_DEPENDS}
TEST_FLAGS +=		TCL_BIN="${MODTCL_BIN}"

# Fix "undefined reference to `__atomic_store_8'"
.if ${MACHINE_ARCH:Mhppa}
WANTLIB +=		atomic
LIB_DEPENDS +=		lang/gcc/${MODGCC4_VERSION},-libs
MAKE_FLAGS +=		LDFLAGS="${LDFLAGS} -latomic"
.endif

FAKE_FLAGS +=		INSTALL="${INSTALL_PROGRAM}" \
			INSTALL_DIR="${INSTALL_DATA_DIR}" \
			INSTALL_TOP="${WRKINST}${PREFIX}"

USE_GMAKE ?=		Yes

DBDIR =			${VARBASE}/redis
SUBST_VARS +=		DBDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/Makefile

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/redis
	${SUBST_DATA} ${WRKSRC}/redis.conf \
			${PREFIX}/share/examples/redis/redis.conf
	${SUBST_DATA} ${WRKSRC}/sentinel.conf \
			${PREFIX}/share/examples/redis/sentinel.conf

pre-test:
	@if [[ $$(ulimit -n) < 10000 ]]; then \
		echo "\n>>> Some tests need raised limits, possibly 10000+ openfiles"; \
		sleep 1; echo; sleep 1; fi
