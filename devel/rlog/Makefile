# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:57 sthen Exp $

COMMENT =		C++ logging library
DISTNAME =		rlog-1.4
SHARED_LIBS =		rlog	0.0	# 5.0
CATEGORIES =		devel
HOMEPAGE =		http://www.arg0.net/rlog
REVISION =		2

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=rlog/}
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
