# $OpenBSD: Makefile,v 1.1.1.1 2016/04/25 12:26:28 jasper Exp $

COMMENT =		Unicode Character Database (UCD)

V =			8.0.0
DISTNAME =		UCD
PKGNAME =		unicode-ucd-$V
CATEGORIES =		textproc

HOMEPAGE =		http://www.unicode.org/ucd/

# http://www.unicode.org/copyright.html
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://www.unicode.org/Public/zipped/$V/
DIST_SUBDIR =		ucd/$V
DISTFILES =		${DISTNAME}${EXTRACT_SUFX} \
			Unihan${EXTRACT_SUFX}
EXTRACT_SUFX =		.zip

PKG_ARCH =		*

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/unicode/ucd/{auxiliary,extracted}/
	${INSTALL_DATA} ${WRKSRC}/*.{txt,html,pdf} ${PREFIX}/share/unicode/ucd/
	${INSTALL_DATA} ${WRKSRC}/auxiliary/* ${PREFIX}/share/unicode/ucd/auxiliary/
	${INSTALL_DATA} ${WRKSRC}/extracted/* ${PREFIX}/share/unicode/ucd/extracted/
	# Copy over the original Unihan zipfile as required by gucharmap
	${INSTALL_DATA} ${FULLDISTDIR}/Unihan${EXTRACT_SUFX} \
		${PREFIX}/share/unicode/ucd

.include <bsd.port.mk>
