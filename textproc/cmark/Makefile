# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:57 sthen Exp $

COMMENT =	CommonMark parsing and rendering library and program in C

GH_ACCOUNT =	commonmark
GH_PROJECT =	cmark
GH_TAGNAME =	0.29.0

SHARED_LIBS +=	cmark                     0.0 # 0.29

CATEGORIES =	textproc

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	https://commonmark.org/

# BSD2
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =	devel/cmake

.include <bsd.port.mk>
