# $OpenBSD: Makefile,v 1.2 2018/09/28 09:33:18 fcambus Exp $

COMMENT =	monospaced bitmap fonts for consoles and terminals

V =		1.0.1
DISTNAME =	spleen-$V

CATEGORIES =	fonts

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = Yes

MASTER_SITES =	https://github.com/fcambus/spleen/releases/download/$V/

NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR =	${PREFIX}/share/fonts/spleen

do-build:
	cd ${WRKSRC}; \
	for file in *.bdf; do \
		font=`basename $$file .bdf`; \
		${X11BASE}/bin/bdftopcf -t -o $$font.pcf $$font.bdf; \
	done
	${GZIP_CMD} ${WRKSRC}/*.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias-spleen ${FONTDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spleen
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/spleen

.include <bsd.port.mk>
