# $OpenBSD: Makefile,v 1.12 2019/07/12 20:44:42 sthen Exp $

COMMENT=		time profiler for Lua

DISTNAME=		luaprofiler-2.0.2
REVISION=		2
CATEGORIES=		devel

HOMEPAGE=		http://luaprofiler.luaforge.net/

# MIT
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://luaforge.net/frs/download.php/3400/

MODULES=		lang/lua

FLAVORS=		lua52
FLAVOR?=

NO_TEST=		Yes

# XXX: Fix this mess and the mess in patch-Makefile_linux
# Makefile.linux is used from the top level, and puts the files there,
# but references files from elsewhere (ie. src/clock.o).
MAKE_FILE=		../Makefile.linux
ALL_TARGET=		# empty
CFLAGS +=       	-I${MODLUA_INCL_DIR} -fPIC

WRKSRC= 		${WRKDIST}/src

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/luaprofiler/\
				${MODLUA_DOCDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/bin/profiler.so ${MODLUA_LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/analyzer/summary.lua \
		${MODLUA_DATADIR}/luaprofiler/
	${INSTALL_DATA} ${WRKDIST}/doc/us/*.html ${MODLUA_DOCDIR}

.include <bsd.port.mk>
