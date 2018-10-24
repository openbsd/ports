# $OpenBSD: Makefile,v 1.8 2018/10/24 14:28:01 sthen Exp $

COMMENT =		C++ logging library
DISTNAME =		rlog-1.4
SHARED_LIBS =		rlog	0.0	# 5.0
CATEGORIES =		devel
HOMEPAGE =		http://www.arg0.net/rlog
REVISION =		2

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m pthread ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=rlog/}
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
