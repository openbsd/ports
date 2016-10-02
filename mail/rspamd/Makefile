# $OpenBSD: Makefile,v 1.23 2016/10/02 19:17:38 edd Exp $

COMMENT=	event-driven spam filtering system in C/Lua

DISTNAME =	rspamd-1.3.5
REVISION =	0
EXTRACT_SUFX=	.tar.xz
REVISION =	0

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += luajit-5.1 m magic pcre pthread sqlite3 ssl

MASTER_SITES=	https://rspamd.com/downloads/

MODULES=	devel/cmake \
		devel/gettext
LIB_DEPENDS=	databases/sqlite3 \
		devel/libmagic \
		devel/glib2 \
		devel/pcre \
		lang/luajit \
		mail/gmime
BUILD_DEPENDS +=devel/ragel
# /var/rspamd needs to exist for tests to run
TEST_DEPENDS = ${FULLPKGNAME}:${FULLPKGPATH}
TEST_DEPENDS +=	databases/redis \
		sysutils/py-psutil \
		textproc/py-demjson \
		devel/py-robotframework

CONFIGURE_ARGS+=-DOPENBSD_BUILD=1 \
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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rspamd
	mv ${WRKINST}${SYSCONFDIR}/rspamd/* ${PREFIX}/share/examples/rspamd
	rm ${PREFIX}/share/rspamd/www/README.md.{beforesubst,orig}

.include <bsd.port.mk>
