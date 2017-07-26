# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:18 sthen Exp $

COMMENT =		C++ logging library
DISTNAME =		rlog-1.4
SHARED_LIBS =		rlog	0.0	# 5.0
CATEGORIES =		devel
HOMEPAGE =		http://www.arg0.net/rlog
REVISION =		1

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m pthread ${COMPILER_LIBCXX}
MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=rlog/}
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
