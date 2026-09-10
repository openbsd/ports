COMMENT =		generate FIR filters for audio room correction

V =			3.2.3
DISTNAME =		drc-${V}
CATEGORIES =		audio

HOMEPAGE =		https://drc-fir.sourceforge.net/

# GPLv2+; bundled sources also contain LGPLv2+, Apache-2.0
# and permissively licensed code.
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=drc-fir/drc-fir/${V}/}

WANTLIB =		${COMPILER_LIBCXX} c m

WRKSRC =		${WRKDIST}/source

COMPILER =		base-clang ports-gcc base-gcc
MAKE_FILE =		makefile
MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}" \
			CPPFLAGS=-I.
ALL_TARGET =		ALL

NO_TEST =		Yes

DEBUG_PACKAGES=		${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/drc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/glsweep ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/lsconv ${PREFIX}/bin

	${INSTALL_DATA_DIR} ${PREFIX}/share/drc
	cd ${WRKSRC} && \
	    find config mic target -type d -print | while read d; do \
		dst=`printf '%s\n' "$$d" | tr ' ' '_'`; \
		${INSTALL_DATA_DIR} "${PREFIX}/share/drc/$$dst"; \
	    done
	cd ${WRKSRC} && \
	    find config mic target -type f -print | while read f; do \
		dst=`printf '%s\n' "$$f" | tr ' ' '_'`; \
		${INSTALL_DATA} "$$f" "${PREFIX}/share/drc/$$dst"; \
	    done

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/drc
	${INSTALL_DATA} ${WRKDIST}/readme.txt \
	    ${PREFIX}/share/doc/drc/readme.txt
	${INSTALL_DATA} ${WRKDIST}/doc/drc.html \
	    ${PREFIX}/share/doc/drc.html
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/drc/figures
	${INSTALL_DATA} ${WRKDIST}/doc/figures/*.png \
	    ${PREFIX}/share/doc/drc/figures/

.include <bsd.port.mk>
