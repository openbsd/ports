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
MODFONT_TYPES =	otf

SITES =	https://brailleinstitute.org/wp-content/uploads/atkinson-hyperlegible-font/
SITES.doc =	https://brailleinstitute.org/wp-content/uploads/2020/11/
DISTFILES.doc =	Atkinson-Hyperlegible-Font-License-2020-1104.pdf

EXTRACT_ONLY =	${DISTFILES}

NO_BUILD =	Yes
NO_TEST =	Yes

WRKSRC =	${WRKDIST}/Print\ Fonts
DOCDIR =	${PREFIX}/share/doc/${MODFONT_FAMILY}

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES.doc} \
		${DOCDIR}/Atkinson-Hyperlegible-Font-License.pdf

.include <bsd.port.mk>
