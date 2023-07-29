COMMENT=	extract valid data from within an Excel spreadsheet
PROJECT =	freexl
DISTNAME=	${PROJECT}-2.0.0
CATEGORIES=	converters geo
SHARED_LIBS=	freexl 0.2 #3.0

LIB_DEPENDS=	converters/libiconv \
		archivers/minizip

WANTLIB += bz2 crypto expat iconv lzma m minizip pthread ssl z zstd

.include <bsd.port.mk>
