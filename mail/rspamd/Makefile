COMMENT=	event-driven spam filtering system in C/Lua

GH_ACCOUNT=	vstakhov
GH_PROJECT=	rspamd
GH_TAGNAME=	3.8.4
REVISION=	1

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += c crypto glib-2.0 icudata icui18n icuio icuuc
WANTLIB += intl m pcre2-8 sodium sqlite3 ssl util xxhash z zstd

FLAVORS=	hyperscan
.if ${MACHINE_ARCH} == "amd64"
FLAVOR?=
.else
# override FLAVOR on !amd64; hyperscan is only available on amd64
FLAVOR=
.endif

MODULES=	devel/cmake \
		lang/python
COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

LIB_DEPENDS=	archivers/zstd \
		databases/sqlite3 \
		devel/gettext,-runtime \
		devel/glib2 \
		devel/pcre2 \
		security/libsodium \
		sysutils/xxhash \
		textproc/icu4c
RUN_DEPENDS=	databases/redis

BUILD_DEPENDS+=	devel/fmt>=10.2.1 \
		devel/ragel
# /var/rspamd needs to exist for tests to run
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH}
TEST_DEPENDS+=	databases/redis \
		devel/py-robotframework${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

CONFIGURE_ARGS+= -DOPENBSD_BUILD=1 \
		-DCMAKE_C_OPT_FLAGS="${CFLAGS}" \
		-DCONFDIR="${SYSCONFDIR}/rspamd" \
		-DDBDIR="${LOCALSTATEDIR}/rspamd" \
		-DLOGDIR="${LOCALSTATEDIR}/log/rspamd" \
		-DMANDIR="${PREFIX}/man" \
		-DRUNDIR="${LOCALSTATEDIR}/run/rspamd" \
		-DRSPAMD_USER="_rspamd"

CONFIGURE_ARGS+= -DSYSTEM_FMT=ON \
		-DSYSTEM_XXHASH=ON \
		-DSYSTEM_ZSTD=ON \
		-DENABLE_JEMALLOC=OFF

# to line up @samples in plist
ETC=		${SYSCONFDIR}
FLAVOR_STRING=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS+=	ETC FLAVOR_STRING

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS+= -DENABLE_LTO=off
.endif

.if ${PROPERTIES:Mluajit}
LIB_DEPENDS+=	lang/luajit
WANTLIB+=	luajit-5.1
USE_NOBTCFI=	Yes
.else
CONFIGURE_ARGS+= -DENABLE_LUAJIT=0
MODULES+=	lang/lua
MODLUA_VERSION=	5.3
MODLUA_SA=	Yes	# avoid overwriting FULLPKGNAME
LIB_DEPENDS+=	${MODLUA_LIB_DEPENDS}
WANTLIB+=	${MODLUA_WANTLIB}
.endif

.if ${FLAVOR:Mhyperscan}
CONFIGURE_ARGS+= -DENABLE_HYPERSCAN=ON
LIB_DEPENDS+=	textproc/hyperscan
WANTLIB+=	hs
.endif

NO_TEST=	Yes
# Make sure you have no rspamd or redis instances running and note that the
# test suite uses the network.
#
# In the event of failing tests, look at output.xml in ${WRKSRC}. If tests
# completed then text/html reports can be generated from this using "rebot",
# however it will not work if tests are interrupted (known/expected
# limitation of the tool).
#
# At least as of 2.2/2.3 we do currently see a hang in tests.
#do-test:
#	cd ${WRKSRC} && env \
#		RSPAMADM=${WRKBUILD}/src/rspamadm/rspamadm \
#		RSPAMC=${WRKBUILD}/src/client/rspamc \
#		RSPAMD=${TRUEPREFIX}/bin/rspamd \
#		RSPAMD_TESTDIR=${WRKSRC}/test \
#		RSPAMD_INSTALLROOT=${WRKINST} \
#		${LOCALBASE}/bin/robot${MODPY_BIN_SUFFIX} \
#		test/functional/cases

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rspamd/{,local.d,override.d}
	mv ${WRKINST}${SYSCONFDIR}/rspamd/* ${PREFIX}/share/examples/rspamd
	rm ${PREFIX}/share/rspamd/www/README.md{.beforesubst,${PATCHORIG}}
	[ -r ${PREFIX}/share/examples/rspamd/local.d/redis.conf ] || \
	    echo 'servers = "127.0.0.1";' > \
	    ${PREFIX}/share/examples/rspamd/local.d/redis.conf

.include <bsd.port.mk>
