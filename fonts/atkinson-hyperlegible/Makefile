COMMENT =	greater legibility and readability for low vision readers

TYPEFACE =	Atkinson-Hyperlegible
V =		2020-0514
VPDF =		2020-1104
PKGNAME =	${TYPEFACE:L}-${V:S/-/./}
CATEGORIES =	fonts

HOMEPAGE =	https://brailleinstitute.org/freefont

# Custom License, BSD-4-like
PERMIT_PACKAGE = Yes

MODULES =	font

MASTER_SITES =	https://brailleinstitute.org/wp-content/uploads/atkinson-hyperlegible-font/
MASTER_SITES0 =	https://brailleinstitute.org/wp-content/uploads/2020/11/
DISTFILES =	Atkinson-Hyperlegible-Font-Print-and-Web-${V}.zip \
		Atkinson-Hyperlegible-Font-License-${VPDF}.pdf:0

EXTRACT_ONLY =	Atkinson-Hyperlegible-Font-Print-and-Web-${V}.zip

NO_BUILD =	Yes
NO_TEST =	Yes
SUBST_VARS +=	VPDF

FONT_DISTDIR =	${WRKDIR}/${TYPEFACE}-Font-Print-and-Web-${V}/Web\ Fonts/TTF/
DOCDIR =	${PREFIX}/share/doc/hyperlegible

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${TYPEFACE}-Font-License-${VPDF}.pdf \
	    ${DOCDIR}

.include <bsd.port.mk>
