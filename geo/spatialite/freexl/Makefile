# $OpenBSD: Makefile,v 1.6 2020/10/06 07:52:09 landry Exp $

COMMENT=	extract valid data from within an Excel spreadsheet
PROJECT =	freexl
DISTNAME=	${PROJECT}-1.0.6
CATEGORIES=	converters geo
SHARED_LIBS=	freexl 0.1 #2.0

LIB_DEPENDS=	converters/libiconv

WANTLIB=	charset iconv m

.include <bsd.port.mk>
