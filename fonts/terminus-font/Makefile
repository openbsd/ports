# $OpenBSD: Makefile,v 1.11 2016/04/24 15:44:32 sthen Exp $

COMMENT =		fixed width fonts especially for long hacking sessions

DISTNAME =		terminus-font-4.40
REVISION =		0
CATEGORIES =		fonts x11

HOMEPAGE =		http://terminus-font.sourceforge.net/

MAINTAINER =		LEVAI Daniel <leva@ecentrum.hu>

# OFL http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=terminus-font/}

CONFIGURE_STYLE =	simple
NO_TEST =		Yes
USE_X11 =		Yes

ALL_TARGET =		pcf

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

.include <bsd.port.mk>
