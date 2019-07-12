# $OpenBSD: Makefile,v 1.4 2019/07/12 20:49:46 sthen Exp $

COMMENT =	synchronizes directories with remote targets upon changes
GH_PROJECT =	lsyncd
GH_ACCOUNT =	axkibe
GH_TAGNAME =	release-2.2.2
DISTNAME =	lsyncd-2.2.2
CATEGORIES =	sysutils

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/lua devel/cmake

CONFIGURE_ENV =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include/inotify/" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath ${LOCALBASE}/lib/inotify"

# uses a2x for the manpage but it fails
#BUILD_DEPENDS =	textproc/asciidoc
RUN_DEPENDS =	net/rsync
LIB_DEPENDS =	${MODLUA_LIB_DEPENDS} \
		devel/libinotify

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/luaposix

TESTS =	churn-direct churn-rsyncssh exclude-rsyncssh schedule \
	churn-rsync exclude-rsync l4rsyncdata

# expects to ssh without password to localhost
TEST_IS_INTERACTIVE =	Yes

WANTLIB +=	${MODLUA_WANTLIB} lib/inotify/inotify c m pthread

pre-configure:
	${SUBST_CMD} ${WRKSRC}/default-rsync.lua ${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/lsyncd
	${INSTALL_DATA} ${WRKSRC}/examples/*.lua ${PREFIX}/share/examples/lsyncd

do-test:
	ln -sf ${WRKBUILD}/lsyncd ${WRKSRC}/lsyncd
.for f in ${TESTS}
	cd ${WRKSRC} && ${MODLUA_BIN} tests/${f}.lua || echo ${f} failed
.endfor

.include <bsd.port.mk>
