# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:13 sthen Exp $

COMMENT =		fixed width fonts especially for long hacking sessions

DISTNAME =		terminus-font-4.47
CATEGORIES =		fonts x11
REVISION =		0

HOMEPAGE =		http://terminus-font.sourceforge.net/

MAINTAINER =		LEVAI Daniel <leva@ecentrum.hu>

# SIL OFL 1.1
PERMIT_PACKAGE =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=terminus-font/}

MODULES +=		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP =		No
MAKE_FLAGS =		INT=${MODPY_BIN}

CONFIGURE_STYLE =	simple
NO_TEST =		Yes
USE_X11 =		Yes

ALL_TARGET =		pcf pcf-8bit raw

FONTDIR =		${PREFIX}/share/fonts/terminus

USE_GMAKE =		Yes

FLAVORS =		symquotes centered_tilde
FLAVOR ?=

.if ${FLAVOR:Mcentered_tilde}
FLAVOR_PATCHES += ${WRKSRC}/alt/td1.diff
.endif

.if ${FLAVOR:Msymquotes}
FLAVOR_PATCHES += ${WRKSRC}/alt/gq2.diff
.endif

PATCH_LIST = patch-* ${FLAVOR_PATCHES}

do-install:
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-terminus

	${INSTALL_DATA_DIR} ${PREFIX}/share/misc/pcvtfonts
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-terminus
	cd ${WRKSRC}; for i in *.raw; do \
		${INSTALL_DATA} $$i ${PREFIX}/share/misc/pcvtfonts/$${i%.raw}; \
	done

.include <bsd.port.mk>
