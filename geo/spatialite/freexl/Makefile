# $OpenBSD: Makefile,v 1.4 2016/04/09 23:38:55 naddy Exp $

COMMENT=	extract valid data from within an Excel spreadsheet
PROJECT =	freexl
DISTNAME=	${PROJECT}-1.0.2
CATEGORIES=	converters geo
SHARED_LIBS=	freexl 0.1 #2.0

LIB_DEPENDS=	converters/libiconv

WANTLIB=	iconv m

.include <bsd.port.mk>
