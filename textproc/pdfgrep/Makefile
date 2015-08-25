# $OpenBSD: Makefile,v 1.3 2015/08/25 16:28:04 jca Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-1.4.0

CATEGORIES =		textproc

HOMEPAGE =		https://pdfgrep.org/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

#GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

WANTLIB +=		c m pthread stdc++ poppler-cpp pcre

MASTER_SITES =		https://pdfgrep.org/download/

LIB_DEPENDS =		print/poppler

CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CXX="${CXX}"

.include <bsd.port.mk>
