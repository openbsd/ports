# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:57 sthen Exp $

COMMENT =		accessing and converting various ebook file formats
V =			0.2.2
DISTNAME =		ebook-tools-${V}

HOMEPAGE =		https://sourceforge.net/projects/ebook-tools/

SHARED_LIBS +=		epub		0.0	# 0.2

CATEGORIES =		textproc devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread xml2 z zip

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ebook-tools/${V}/}

MODULES =		devel/cmake
LIB_DEPENDS =		textproc/libxml \
			archivers/libzip

NO_TEST =		Yes

.include <bsd.port.mk>
