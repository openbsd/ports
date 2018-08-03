# $OpenBSD: Makefile,v 1.1.1.1 2018/08/03 05:13:37 rsadowski Exp $

COMMENT =	CommonMark parsing and rendering library and program in C

GH_ACCOUNT =	commonmark
GH_PROJECT =	cmark
GH_TAGNAME =	0.28.3

SHARED_LIBS +=	cmark                     0.0 # 0.28

CATEGORIES =	textproc

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	https://commonmark.org/

# BSD2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	devel/cmake

.include <bsd.port.mk>
