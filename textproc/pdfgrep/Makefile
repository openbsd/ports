# $OpenBSD: Makefile,v 1.1.1.1 2015/03/24 09:57:04 giovanni Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-1.3.2

CATEGORIES =		textproc

HOMEPAGE =		http://pdfgrep.sourceforge.net/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

#GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m pthread stdc++ poppler-cpp

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pdfgrep/}

LIB_DEPENDS =		print/poppler

CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CXX="${CXX}"

.include <bsd.port.mk>
