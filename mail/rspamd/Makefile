# $OpenBSD: Makefile,v 1.58 2018/08/21 17:11:08 sthen Exp $

COMMENT=	event-driven spam filtering system in C/Lua

GH_ACCOUNT=	vstakhov
GH_PROJECT=	rspamd
GH_TAGNAME=	1.7.9
REVISION=	0

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event glib-2.0 gthread-2.0 icudata icui18n icuuc
WANTLIB += intl m magic pcre pthread sqlite3 ssl z

MODULES=	devel/cmake
LIB_DEPENDS=	databases/sqlite3 \
		devel/gettext \
		devel/glib2 \
		devel/libmagic \
		devel/pcre \
		textproc/icu4c
BUILD_DEPENDS+=	devel/ragel
# /var/rspamd needs to exist for tests to run
TEST_DEPENDS=	${FULLPKGNAME}:${FULLPKGPATH}
TEST_DEPENDS+=	databases/redis \
		devel/py-robotframework \
		sysutils/py-psutil \
		textproc/py-demjson

CONFIGURE_ARGS+= -DOPENBSD_BUILD=1 \
		-DCMAKE_C_OPT_FLAGS="${CFLAGS}" \
		-DCONFDIR="${SYSCONFDIR}/rspamd" \
		-DDBDIR="${LOCALSTATEDIR}/rspamd" \
		-DLOGDIR="${LOCALSTATEDIR}/log/rspamd" \
		-DMANDIR="${PREFIX}/man" \
		-DRUNDIR="${LOCALSTATEDIR}/run/rspamd" \
		-DRSPAMD_USER="_rspamd" \
		-DRSPAMD_GROUP="_rspamd"

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
LIB_DEPENDS+=	lang/luajit
WANTLIB+=	luajit-5.1
PKG_ARGS +=     -Dluajit=1
.else
# XXX patched to disable lua 5.3 preference in CMakeLists.txt;
# for post-1.7.9 try removing that and MODLUA_VERSION=5.3
CONFIGURE_ARGS+= -DENABLE_LUAJIT=0 \
		-DENABLE_TORCH=0
MODULES+=	lang/lua
LIB_DEPENDS+=	${MODLUA_LIB_DEPENDS}
WANTLIB+=	${MODLUA_WANTLIB}
PKG_ARGS +=     -Dluajit=0
.endif

# Make sure we pick up the base libevent, never the ports one!
CONFIGURE_ARGS+=	-DLIBEVENT_ROOT_DIR=/usr

# Make sure you have no rspamd or redis instances running and note that the
# test suite uses the network.
#
# In the event of failing tests, look at log.html in ${WRKSRC}
do-test:
	cd ${WRKSRC} && \
		env RSPAMADM=${WRKBUILD}/src/rspamadm/rspamadm \
		RSPAMC=${WRKBUILD}/src/client/rspamc \
		RSPAMD=/usr/local/bin/rspamd \
		${LOCALBASE}/bin/robot \
		test/functional/cases

# no trailing crlf
post-extract:
	for i in hiredis http-parser lc-btrie libottery; do \
	    echo >> ${WRKSRC}/contrib/$$i/CMakeLists.txt; done

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rspamd
	mv ${WRKINST}${SYSCONFDIR}/rspamd/* ${PREFIX}/share/examples/rspamd
	rm ${PREFIX}/share/rspamd/www/README.md.{beforesubst,orig}

.include <bsd.port.mk>
