# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:41 sthen Exp $

COMMENT =	binding for lua to the tcl interpreter and to the tk toolkit

V =		0.9-2
PV =		-${V:S/-/_/}
DISTNAME =	ltcltk-${V}
PKGNAME =	ltcltk${PV}
REVISION =	0
CATEGORIES =	devel
HOMEPAGE =	http://www.tset.de/ltcltk/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# MIT/X11
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODTCL_LIB}
MASTER_SITES =	http://www.tset.de/downloads/
MODULES =	lang/lua x11/tk

# Uses functionality deprecated in 8.6
MODTK_VERSION =	8.5

SEPARATE_BUILD =Yes
LIB_DEPENDS =	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_TEST =	Yes

CFLAGS +=	-Wall ${PICFLAG} -shared \
		-I${MODTCL_INCDIR} -I${MODLUA_INCL_DIR} \
		-L${LOCALBASE}/lib

LK_DOC_DIR=	${PREFIX}/share/doc/ltcltk
LK_EXA_DIR=	${PREFIX}/share/examples/ltcltk

do-configure:
	perl -pi \
	-e '$$. == 1 && s!/usr/bin/env lua!${MODLUA_BIN}!;' \
	-e 'close ARGV if eof;' \
	${WRKSRC}/samples/*.lua

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} ltcl.c -o ${WRKBUILD}/ltcl.so -l${MODTCL_LIB}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} ${LK_DOC_DIR} ${LK_EXA_DIR}
	${INSTALL_DATA} ${WRKBUILD}/ltcl.so ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/ltk.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/doc/* ${LK_DOC_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/*.lua ${LK_EXA_DIR}
	chmod ${SHAREMODE} ${LK_EXA_DIR}/renumbertests.lua

.include <bsd.port.mk>
