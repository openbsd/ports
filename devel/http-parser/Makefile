# $OpenBSD: Makefile,v 1.1.1.1 2020/03/02 16:25:43 landry Exp $

COMMENT =	parser for HTTP messages focused on performance
GH_ACCOUNT =	nodejs
GH_PROJECT =	http-parser
GH_TAGNAME =	v2.9.3
CATEGORIES =	devel

SHARED_LIBS =	http_parser 0.0 #2.9

# MIT
PERMIT_PACKAGE =yes

MAKE_ENV =	SONAME=libhttp_parser.so.${LIBhttp_parser_VERSION} \
		LIBNAME=libhttp_parser.so.${LIBhttp_parser_VERSION}

USE_GMAKE =	yes
ALL_TARGET =	library

.include <bsd.port.mk>
