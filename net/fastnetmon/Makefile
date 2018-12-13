# $OpenBSD: Makefile,v 1.4 2018/12/13 19:53:24 sthen Exp $

COMMENT =		DDoS detector with multiple packet capture engines

GH_ACCOUNT =		pavel-odintsov
GH_PROJECT =		fastnetmon
GH_COMMIT =		611ccd8bf494d6356901a6ac7cde5998bfe061e2
DISTNAME =		fastnetmon-1.1.3.1
REVISION =		2

HOMEPAGE =		https://fastnetmon.com/guides/

CATEGORIES =		net security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt c curses form hiredis
WANTLIB += json-c log4cpp m pcap

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		devel/boost \
			devel/log4cpp \
			devel/json-c \
			databases/libhiredis

CONFIGURE_ARGS +=	-DENABLE_LUA_SUPPORT=Off \
			-DDISABLE_NETMAP_SUPPORT=On \
			-DLOG4CPP_INCLUDES_FOLDER="${LOCALBASE}/include/log4cpp" \
			-DJSONC_INCLUDES_FOLDER="${LOCALBASE}/include/json-c" \
			-DHIREDIS_INCLUDES_FOLDER="${LOCALBASE}/include/hiredis"

WRKSRC =		${WRKDIST}/src

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	sed -i -e 's,/var/log,&/fastnetmon,g;' \
		-e 's,/var/run,&/fastnetmon,g;' \
		-e 's,/etc,${SYSCONFDIR}/fastnetmon,g' \
		-e 's,/usr/local,${PREFIX},g' \
		${WRKSRC}/fast_platform.h.template \
		${WRKSRC}/fastnetmon.conf ${WRKSRC}/scripts/*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/fastnetmon/
	${INSTALL_DATA} ${WRKSRC}/notify_about_attack.sh ${WRKSRC}/scripts/* \
		${PREFIX}/share/examples/fastnetmon/

.include <bsd.port.mk>
