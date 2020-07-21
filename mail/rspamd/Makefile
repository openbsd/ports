# $OpenBSD: Makefile,v 1.84 2020/07/21 23:00:34 sthen Exp $

COMMENT=	event-driven spam filtering system in C/Lua

GH_ACCOUNT=	vstakhov
GH_PROJECT=	rspamd
GH_TAGNAME=	2.5
REVISION=	1

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += blas c crypto glib-2.0 icudata icui18n icuuc intl m
WANTLIB += pcre sodium sqlite3 ssl util z

FLAVORS=	no_luajit
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
FLAVOR?=
.else
FLAVOR=		no_luajit
.endif

MODULES=	devel/cmake \
		lang/python
COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}
MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=	databases/sqlite3 \
		devel/gettext,-runtime \
		devel/glib2 \
		devel/pcre \
		security/libsodium \
		textproc/icu4c
RUN_DEPENDS=	databases/redis

# uses cblas headers; pull this in via LDEP and register an "extra" dependency
# on cblas lib to make sure rspamd gets updated for major changes in cblas
LIB_DEPENDS+=	math/cblas
WANTLIB+=	cblas

BUILD_DEPENDS+=	devel/ragel
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

.if ${FLAVOR:Mno_luajit}
CONFIGURE_ARGS+= -DENABLE_LUAJIT=0
MODULES+=	lang/lua
MODLUA_VERSION=	5.3
MODLUA_SA=	Yes	# avoid overwriting FULLPKGNAME
LIB_DEPENDS+=	${MODLUA_LIB_DEPENDS}
WANTLIB+=	${MODLUA_WANTLIB}
.else
LIB_DEPENDS+=	lang/luajit
WANTLIB+=	luajit-5.1
.endif

# Make sure you have no rspamd or redis instances running and note that the
# test suite uses the network.
#
# In the event of failing tests, look at output.xml in ${WRKSRC}. If tests
# completed then text/html reports can be generated from this using "rebot",
# however it will not work if tests are interrupted (known/expected
# limitation of the tool).
#
# At least as of 2.2/2.3 we do currently see a hang in tests.
do-test:
	cd ${WRKSRC} && \
		env RSPAMADM=${WRKBUILD}/src/rspamadm/rspamadm \
		RSPAMC=${WRKBUILD}/src/client/rspamc \
		RSPAMD=${TRUEPREFIX}/bin/rspamd \
		${LOCALBASE}/bin/robot${MODPY_BIN_SUFFIX} \
		test/functional/cases

# no trailing crlf
post-extract:
	for i in hiredis http-parser lc-btrie libottery; do \
	    echo >> ${WRKSRC}/contrib/$$i/CMakeLists.txt; done

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rspamd/{,local.d,override.d}
	mv ${WRKINST}${SYSCONFDIR}/rspamd/* ${PREFIX}/share/examples/rspamd
	rm ${PREFIX}/share/rspamd/www/README.md.{beforesubst,orig}
	[ -r ${PREFIX}/share/examples/rspamd/local.d/redis.conf ] || \
	    echo 'servers = "127.0.0.1";' > \
	    ${PREFIX}/share/examples/rspamd/local.d/redis.conf

.include <bsd.port.mk>
