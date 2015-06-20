# $OpenBSD: Makefile,v 1.2 2015/06/20 14:08:23 jca Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-1.3.2
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://pdfgrep.org/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

#GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread stdc++ poppler-cpp

MASTER_SITES =		https://pdfgrep.org/download/

LIB_DEPENDS =		print/poppler

CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CXX="${CXX}"

.include <bsd.port.mk>
