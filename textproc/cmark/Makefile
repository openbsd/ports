# $OpenBSD: Makefile,v 1.2 2019/05/03 05:32:41 rsadowski Exp $

COMMENT =	CommonMark parsing and rendering library and program in C

GH_ACCOUNT =	commonmark
GH_PROJECT =	cmark
GH_TAGNAME =	0.29.0

SHARED_LIBS +=	cmark                     0.0 # 0.29

CATEGORIES =	textproc

MAINTAINER =	Jan Klemkow <j.klemkow@wemelug.de>

HOMEPAGE =	https://commonmark.org/

# BSD2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MODULES =	devel/cmake

.include <bsd.port.mk>
