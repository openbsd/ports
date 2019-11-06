# $OpenBSD: Makefile,v 1.14 2019/11/06 02:44:12 kirby Exp $

COMMENT =		Gnu All Mobile Management Utilities

DISTNAME =		gammu-1.41.0

SHARED_LIBS += 		Gammu 1.0 # 8.1
SHARED_LIBS += 		gsmsd 1.0 # 8.1

CATEGORIES =		comms

HOMEPAGE =		https://wammu.eu/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c curl dbi glib-2.0 gobject-2.0 iconv intl m pthread usb-1.0

MASTER_SITES =		https://dl.cihar.com/gammu/releases/

MODULES =		devel/cmake

COMPILER = 		base-clang ports-gcc

BUILD_DEPENDS = 	devel/gettext,-tools
RUN_DEPENDS =		misc/dialog
LIB_DEPENDS =		databases/libdbi \
			devel/glib2 \
			devel/libusb1 \
			net/curl
TEST_DEPENDS = 		devel/cmake

CONFIGURE_ARGS +=	-DINSTALL_MAN_DIR:STRING=man \
			-DINSTALL_BASH_COMPLETION=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -liconv -lintl"

FLAVORS += 		mysql pgsql
FLAVOR ?=
SEPARATE_BUILD = 	flavored

.if !${FLAVOR:Mpgsql} && !${FLAVOR:Mmysql}
RUN_DEPENDS += 		databases/libdbi-drivers,-sqlite3
.endif

.if ${FLAVOR:Mmysql}
CONFIGURE_ARGS += 	-DMYSQL_BACKEND=ON
LIB_DEPENDS += 		databases/mariadb
RUN_DEPENDS +=		databases/libdbi-drivers
WANTLIB += 		mariadb
.endif

.if ${FLAVOR:Mpgsql}
CONFIGURE_ARGS += 	-DPSQL_BACKEND=ON
LIB_DEPENDS += 		databases/postgresql
RUN_DEPENDS +=		databases/libdbi-drivers,-pgsql
WANTLIB += 		pq
.endif

.include <bsd.port.mk>
