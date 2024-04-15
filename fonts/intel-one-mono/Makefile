COMMENT =	expressive monospaced font family

CATEGORIES =	fonts
V =		1.3.0
PKGNAME =	intel-one-mono-$V

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/intel/intel-one-mono/releases/download/V$V/

DISTFILES =	otf.zip \
		ttf.zip

DIST_SUBDIR =	intel-one-mono-$V

HOMEPAGE =	https://github.com/intel/intel-one-mono

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

FONTDIR =	${PREFIX}/share/fonts/intel-one-mono

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/otf/*.otf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/ttf/*.ttf ${FONTDIR}

.include <bsd.port.mk>
