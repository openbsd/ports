# $OpenBSD: Makefile,v 1.18 2016/06/13 12:05:58 naddy Exp $

BROKEN-macppc=	error: unknown register name 'edx' in 'asm'
COMMENT=	event-driven spam filtering system in C/Lua

DISTNAME=	rspamd-1.2.7
EXTRACT_SUFX=	.tar.xz
REVISION=	0

CATEGORIES=	mail

HOMEPAGE=	https://rspamd.com/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event gio-2.0 glib-2.0 gmime-2.6 gmodule-2.0 gobject-2.0
WANTLIB += luajit-5.1 m magic pcre pthread sqlite3 ssl

MASTER_SITES=	https://rspamd.com/downloads/

MODULES=	devel/cmake \
		devel/gettext
LIB_DEPENDS=	devel/libmagic \
		devel/glib2 \
		devel/pcre \
		lang/luajit \
		mail/gmime

CONFIGURE_ARGS+=-DOPENBSD_BUILD=1 \
		-DCONFDIR="${SYSCONFDIR}/rspamd" \
		-DDBDIR="${LOCALSTATEDIR}/rspamd" \
		-DLOGDIR="${LOCALSTATEDIR}/log/rspamd" \
		-DMANDIR="${PREFIX}/man" \
		-DRUNDIR="${LOCALSTATEDIR}/run/rspamd" \
		-DRSPAMD_USER="_rspamd" \
		-DRSPAMD_GROUP="_rspamd"

# XXX Known problems:
# - tests currently need clang as an assembler due to use of AVX.
# - if aio test is run after dns test, it hangs:
# ${WRKBUILD}/test/rspamd-test -p /rspamd/aio -p /rspamd/dns     
TEST_TARGET=	run-test

pre-configure:
	${SUBST_CMD} ${WRKSRC}/interface/README.md

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rspamd
	mv ${WRKINST}${SYSCONFDIR}/rspamd/* ${PREFIX}/share/examples/rspamd
	rm ${PREFIX}/share/rspamd/www/README.md.{beforesubst,orig}

.include <bsd.port.mk>
