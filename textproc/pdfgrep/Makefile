# $OpenBSD: Makefile,v 1.13 2019/10/26 22:37:56 sthen Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-2.1.2

CATEGORIES =		textproc

HOMEPAGE =		https://pdfgrep.org/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

# GPLv2+
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

# uses pledge()
WANTLIB +=		${COMPILER_LIBCXX}
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
