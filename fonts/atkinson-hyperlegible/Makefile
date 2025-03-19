COMMENT =	greater legibility and readability for low vision readers

MODFONT_FAMILY =	atkinson-hyperlegible
VDIST =		2020-0514
MODFONT_VERSION =	${VDIST:S/-/./}
REVISION =	1
DISTNAME =	Atkinson-Hyperlegible-Font-Print-and-Web-${VDIST}
CATEGORIES =	fonts

HOMEPAGE =	https://brailleinstitute.org/freefont

# Custom License, BSD-4-like
PERMIT_PACKAGE = Yes

MODULES =	font
MODFONT_FONTFILES =	*.otf

# mirrored from https://www.brailleinstitute.org/freefont/#download, this was
# previously available under plain download but is now front-ended by a form
SITES =		https://spacehopper.org/mirrors/
SITES.doc =	https://spacehopper.org/mirrors/
DISTFILES.doc =	Atkinson-Hyperlegible-Font-License-2020-1104.pdf

EXTRACT_ONLY =	${DISTFILES}

NO_BUILD =	Yes
NO_TEST =	Yes

WRKSRC =	${WRKDIST}/Print\ Fonts

post-install:
	${INSTALL_DATA_DIR} ${MODFONT_DOCDIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES.doc} \
		${MODFONT_DOCDIR}/Atkinson-Hyperlegible-Font-License.pdf

.include <bsd.port.mk>
