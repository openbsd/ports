# $OpenBSD: Makefile,v 1.11 2020/06/25 07:28:29 jasper Exp $

COMMENT =		DDoS detector with multiple packet capture engines

GH_ACCOUNT =		pavel-odintsov
GH_PROJECT =		fastnetmon
GH_TAGNAME =		v1.1.6

HOMEPAGE =		https://fastnetmon.com/guides/

CATEGORIES =		net security

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

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
			-DENABLE_DPI_SUPPORT=Off \
			-DENABLE_NETMAP_SUPPORT=Off \
			-DLOG4CPP_INCLUDES_FOLDER="${LOCALBASE}/include/log4cpp" \
			-DJSONC_INCLUDES_FOLDER="${LOCALBASE}/include/json-c" \
			-DHIREDIS_INCLUDES_FOLDER="${LOCALBASE}/include/hiredis"

# Use __atomic* primitives, allowing to build on archs where there are no
# 64-bit __sync* ones.  Such archs, when using gcc, need ports-gcc's
# libatomic on top of that.
CONFIGURE_ARGS +=	-DUSE_NEW_ATOMIC_BUILTINS=On
.if ${MACHINE_ARCH} == "hppa"
WANTLIB +=		atomic
.endif

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
