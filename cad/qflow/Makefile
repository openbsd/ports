COMMENT =	full end-to-end digital synthesis flow for VLSI ASIC designs

DISTNAME =	qflow-1.4.83
REVISION =	4

CATEGORIES =	cad

HOMEPAGE =	http://opencircuitdesign.com/qflow/

MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# GPL (qflow, no applicable version specified)
# For gscl45nm tech files: Apache-2.0, see:
# https://research.ece.ncsu.edu/eda/freepdk
# For OSU 050/035/018 tech files see:
# https://vlsiarch.ecen.okstate.edu/flows/MOSIS_SCMOS/OSU_Copyright
PERMIT_PACKAGE = Yes

WANTLIB =	c m

SITES =		http://opencircuitdesign.com/qflow/archive/

EXTRACT_SUFX =	.tgz

MODULES =	lang/tcl \
		lang/python

BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		cad/yosys \
		cad/graywolf \
		cad/opensta \
		cad/qrouter \
		cad/magic \
		cad/netgen

RUN_DEPENDS =	${MODTCL_RUN_DEPENDS} \
		${MODPY_TKINTER_DEPENDS} \
		cad/yosys \
		cad/graywolf \
		cad/opensta \
		cad/qrouter \
		cad/magic \
		cad/netgen \
		shells/tcsh \
		sysutils/ggrep

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	TCLSH_PATH=${MODTCL_BIN}

USE_GMAKE =	Yes

NO_TEST =	Yes

post-install:
	${MODPY_COMPILEALL} ${PREFIX}/share/qflow/scripts
	rm ${PREFIX}/share/qflow/bin/yosys-abc
	ln -s ${LOCALBASE}/bin/abc ${PREFIX}/share/qflow/bin/yosys-abc
	sed -i "s,/bin/tcsh -f,${LOCALBASE}/bin/tcsh," \
	    ${PREFIX}/share/qflow/scripts/*.sh ${PREFIX}/bin/qflow

.include <bsd.port.mk>
