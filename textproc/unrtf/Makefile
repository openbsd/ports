COMMENT =	RTF document converter
DISTNAME =	unrtf-0.21.10
CATEGORIES =	textproc

HOMEPAGE =	https://www.gnu.org/software/unrtf/unrtf.html

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c iconv

SITES =		${SITE_GNU:=unrtf/}

LIB_DEPENDS =	converters/libiconv

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"

.include <bsd.port.mk>
