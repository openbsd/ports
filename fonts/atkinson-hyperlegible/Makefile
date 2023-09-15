COMMENT =	greater legibility and readability for low vision readers

TYPEFACE =	atkinson-hyperlegible
VDIST =		2020-0514
V =		${VDIST:S/-/./}
REVISION =	1
DISTNAME =	Atkinson-Hyperlegible-Font-Print-and-Web-${VDIST}
CATEGORIES =	fonts

HOMEPAGE =	https://brailleinstitute.org/freefont

# Custom License, BSD-4-like
PERMIT_PACKAGE = Yes

MODULES =	font
FONTTYPES =	otf

SITES =	https://brailleinstitute.org/wp-content/uploads/atkinson-hyperlegible-font/
SITES.doc =	https://brailleinstitute.org/wp-content/uploads/2020/11/
DISTFILES.doc =	Atkinson-Hyperlegible-Font-License-2020-1104.pdf

EXTRACT_ONLY =	${DISTFILES}

NO_BUILD =	Yes
NO_TEST =	Yes

WRKSRC =	${WRKDIST}/Print\ Fonts
DOCDIR =	${PREFIX}/share/doc/${TYPEFACE}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES.doc} \
		${DOCDIR}/Atkinson-Hyperlegible-Font-License.pdf

.include <bsd.port.mk>
