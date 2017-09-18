# $OpenBSD: Makefile,v 1.43 2017/09/18 10:23:07 sthen Exp $

COMMENT=	event-driven spam filtering system in C/Lua

GH_ACCOUNT=	vstakhov
GH_PROJECT=	rspamd
GH_TAGNAME=	1.6.4
REVISION=	0

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event fann glib-2.0 gthread-2.0 icudata icui18n icuuc
WANTLIB += intl luajit-5.1 m magic pcre pthread sqlite3 ssl

MODULES=	devel/cmake
LIB_DEPENDS=	databases/sqlite3 \
		devel/libmagic \
		devel/gettext \
		devel/glib2 \
		devel/pcre \
		lang/luajit \
		math/fann \
		textproc/icu4c
BUILD_DEPENDS+=	devel/ragel
# /var/rspamd needs to exist for tests to run
TEST_DEPENDS = ${FULLPKGNAME}:${FULLPKGPATH}
TEST_DEPENDS +=	databases/redis \
		sysutils/py-psutil \
		textproc/py-demjson \
		devel/py-robotframework

CONFIGURE_ARGS+=-DOPENBSD_BUILD=1 \
		-DCMAKE_C_OPT_FLAGS="${CFLAGS}" \
		-DCONFDIR="${SYSCONFDIR}/rspamd" \
		-DDBDIR="${LOCALSTATEDIR}/rspamd" \
		-DLOGDIR="${LOCALSTATEDIR}/log/rspamd" \
		-DMANDIR="${PREFIX}/man" \
		-DRUNDIR="${LOCALSTATEDIR}/run/rspamd" \
		-DRSPAMD_USER="_rspamd" \
		-DRSPAMD_GROUP="_rspamd"

# Make sure we pick up the base libevent, never the ports one!
CONFIGURE_ARGS +=	-DLIBEVENT_ROOT_DIR=/usr
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
