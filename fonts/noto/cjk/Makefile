# $OpenBSD: Makefile,v 1.2 2016/01/11 11:04:21 czarkoff Exp $

COMMENT =		east asian fonts for the noto font family

V =			1.004
REVISION =		0
NOTO_PROJECT =		cjk

HOMEPAGE =		https://www.google.com/get/noto/help/cjk/

# The CJK fonts are duplicated in upstream distfile in many redundant formats.
# Hack to save ~700 MB bandwidth when fetching distfile.
PKGNAME =		noto-${NOTO_PROJECT}-$V
DIST_SUBDIR =		${PKGNAME}
MASTER_SITES =		https://github.com/googlei18n/noto-cjk/raw/v$V/
DISTNAME =		NotoSansCJK.ttc
EXTRACT_SUFX =		.zip

do-install:
	${INSTALL_DATA_DIR} ${NOTO_INSTALLDIR}
	${INSTALL_DATA} ${WRKDIR}/NotoSansCJK.ttc ${NOTO_INSTALLDIR}

.include <bsd.port.mk>
