# $OpenBSD: Makefile,v 1.7 2017/05/13 09:49:51 espie Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-2.0.1
REVISION =		0

CATEGORIES =		textproc

HOMEPAGE =		https://pdfgrep.org/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANT_CXX = base gcc

# uses pledge()
WANTLIB +=		c m pthread poppler-cpp pcre gcrypt gpg-error

MASTER_SITES =		https://pdfgrep.org/download/

LIB_DEPENDS =		print/poppler \
			security/libgcrypt
TEST_DEPENDS =		devel/dejagnu \
			print/texlive/base

CONFIGURE_ENV =		LDFLAGS="-L${X11BASE}/lib"
CONFIGURE_STYLE =	gnu

MAKE_FLAGS =		CXX="${CXX}"
TEST_FLAGS =		RUNTESTFLAGS="--all"

.include <bsd.port.mk>
