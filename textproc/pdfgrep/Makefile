# $OpenBSD: Makefile,v 1.5 2016/01/15 19:57:24 sthen Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-1.4.1

CATEGORIES =		textproc

HOMEPAGE =		https://pdfgrep.org/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

# uses pledge()
WANTLIB +=		c m pthread poppler-cpp pcre

MASTER_SITES =		https://pdfgrep.org/download/

LIB_DEPENDS =		print/poppler
TEST_DEPENDS =		devel/dejagnu \
			print/texlive/base

CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CXX="${CXX}"
TEST_FLAGS =		RUNTESTFLAGS="--all"

.include <bsd.port.mk>
