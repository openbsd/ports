COMMENT =	Lua interface to Tcl and the Tk graphical toolkit

DISTNAME =	ltcltk-0.9_5
GH_ACCOUNT =	dcurrie
GH_PROJECT =	ltcltk
GH_COMMIT =	835c799acb3d6ad0eff5ead5372d22de1ceaadcd
CATEGORIES =	devel
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# MIT/X11
PERMIT_PACKAGE =Yes

WANTLIB =	${MODTCL_LIB} pthread
MODULES =	lang/lua x11/tk
MODTK_VERSION =	8.6
LIB_DEPENDS =	${MODTCL_LIB_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
SEPARATE_BUILD =Yes
NO_TEST =	Yes

CFLAGS +=	-Wall ${PICFLAG} -shared -pthread \
		-I${MODTCL_INCDIR} -I${MODLUA_INCL_DIR} \
		-L${LOCALBASE}/lib

WRKSRC =	${WRKDIST}/src

LK_DOC_DIR=	${PREFIX}/share/doc/ltcltk
LK_EXA_DIR=	${PREFIX}/share/examples/ltcltk

do-configure:
	perl -pi \
	-e '$$. == 1 && s!/usr/bin/env lua!${MODLUA_BIN}!;' \
	-e 'close ARGV if eof;' \
	${WRKSRC}/samples/*.lua \
	${WRKSRC}/ltksh

do-build:
	cd ${WRKSRC} && ${CC} ${CFLAGS} ltcl.c -o ${WRKBUILD}/ltcl.so -l${MODTCL_LIB} -lpthread

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR} ${LK_DOC_DIR} ${LK_EXA_DIR}
	${INSTALL_DATA}   ${WRKBUILD}/ltcl.so      ${MODLUA_LIBDIR}
	${INSTALL_DATA}   ${WRKSRC}/ltk.lua        ${MODLUA_DATADIR}
	${INSTALL_DATA}   ${WRKSRC}/doc/*          ${LK_DOC_DIR}
	${INSTALL_DATA}   ${WRKDIST}/proto-doc     ${LK_DOC_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/samples/*.lua  ${LK_EXA_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/ltksh          ${PREFIX}/bin
	chmod ${SHAREMODE} ${LK_EXA_DIR}/{2018_advent_10b.lua,renumbertests.lua}

.include <bsd.port.mk>
