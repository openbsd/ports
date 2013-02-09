# $OpenBSD: Makefile,v 1.6 2013/02/09 14:49:51 sthen Exp $

COMMENT =		fixed width fonts especially for long hacking sessions

DISTNAME =		terminus-font-4.38
CATEGORIES =		fonts x11

HOMEPAGE =		http://terminus-font.sourceforge.net/

MAINTAINER =		LEVAI Daniel <leva@ecentrum.hu>

# OFL http://scripts.sil.org/OFL
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=terminus-font/}

CONFIGURE_STYLE =	simple
NO_REGRESS =		Yes
USE_X11 =		Yes

ALL_TARGET =		pcf

FONTDIR =		${PREFIX}/lib/X11/fonts/terminus

USE_GMAKE =		Yes

FLAVORS =		symquotes
FLAVOR ?=

.if ${FLAVOR:Msymquotes}
post-patch:
	${PATCH} -d ${WRKSRC} < ${WRKSRC}/alt/gq2.diff
.endif

do-install:
	${GZIP_CMD} ${WRKSRC}/*.pcf
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf\.gz' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf\.gz//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKBUILD}/fonts.alias ${FONTDIR}/fonts.alias-terminus

# XXX workaround for 4.38
post-extract:
	chmod a+x ${WRKSRC}/configure

.include <bsd.port.mk>
