# $OpenBSD: Makefile,v 1.9 2017/07/27 10:05:20 sthen Exp $

COMMENT =		tool to search text in PDF files

DISTNAME =		pdfgrep-2.0.1
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://pdfgrep.org/

MAINTAINER =		Reinhold Straub <demarchie@web.de>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

COMPILER =		gcc

# uses pledge()
WANTLIB +=		c m pthread poppler-cpp pcre gcrypt gpg-error
WANTLIB += ${COMPILER_LIBCXX}

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
