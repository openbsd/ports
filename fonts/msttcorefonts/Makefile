COMMENT=		Microsoft TrueType core fonts

MODFONT_FAMILY =	msttcorefonts
MODFONT_VERSION =	2.0
REVISION=		5

HOMEPAGE=		https://corefonts.sourceforge.net/

# Font source files have a restrictive license
PERMIT_PACKAGE=		Restrictive license, can't distribute modified files
PERMIT_DISTFILES=	Yes

SITES=			${SITE_SOURCEFORGE:=corefonts/}
DIST_SUBDIR=		${PKGNAME}

MODULES =		font

BUILD_DEPENDS =		archivers/cabextract \
			converters/libiconv

NO_BUILD=		Yes
NO_TEST=		Yes

FLAVORS=		no_comic
FLAVOR?=

DISTFILES=		andale32.exe \
			arial32.exe \
			arialb32.exe \
			comic32.exe \
			courie32.exe \
			georgi32.exe \
			impact32.exe \
			times32.exe \
			trebuc32.exe \
			verdan32.exe \
			wd97vwr32.exe \
			webdin32.exe

MODFONT_FONTDIR =	${PREFIX}/share/fonts/mscorefonts
MODFONT_DOCFILES =	eula.txt

FIX_CRLF_FILES =	eula.txt

EXTRACT_CASES=		*.exe) cabextract --lowercase --quiet \
			--directory=${WRKDIST} ${FULLDISTDIR}/$$archive ;;

post-extract:
	@cabextract --lowercase --directory=${WRKDIST} ${WRKDIST}/viewer1.cab
	@iconv -f iso-8859-1 -t utf-8 ${WRKSRC}/licen.txt > ${WRKSRC}/eula.txt

.include <bsd.port.mk>
