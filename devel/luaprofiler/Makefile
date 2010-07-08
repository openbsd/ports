# $OpenBSD: Makefile,v 1.1.1.1 2010/07/08 12:28:57 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		time profiler for Lua

V=			2.0.2
DISTNAME=		luaprofiler-$V
CATEGORIES=		devel

HOMEPAGE=		http://luaprofiler.luaforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/lua

MASTER_SITES=		http://luaforge.net/frs/download.php/3400/

NO_REGRESS=		Yes

# XXX: Fix this mess and the mess in patch-Makefile.linux
MAKE_FILE=		../Makefile.linux
ALL_TARGET=		# empty
CFLAGS +=       	-I${LOCALBASE}/include -fPIC

WRKDIST=		${WRKDIR}/luaprofiler-$V/
WRKSRC= 		${WRKDIST}/src/

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}/luaprofiler/\
				${PREFIX}/share/doc/luaprofiler/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/profiler.so ${MODLUA_LIBDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/analyzer/summary.lua \
		${MODLUA_DATADIR}/luaprofiler/
	${INSTALL_DATA} ${WRKDIST}/doc/us/*.html ${PREFIX}/share/doc/luaprofiler/

.include <bsd.port.mk>
