# $OpenBSD: Makefile,v 1.5 2017/09/18 13:41:01 landry Exp $

COMMENT=	extract valid data from within an Excel spreadsheet
PROJECT =	freexl
DISTNAME=	${PROJECT}-1.0.4
CATEGORIES=	converters geo
SHARED_LIBS=	freexl 0.1 #2.0

LIB_DEPENDS=	converters/libiconv

WANTLIB=	iconv m

.include <bsd.port.mk>
