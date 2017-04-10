# $OpenBSD: Makefile,v 1.5 2017/04/10 11:45:27 sthen Exp $

COMMENT =		C++ logging library
DISTNAME =		rlog-1.4
SHARED_LIBS =		rlog	0.0	# 5.0
CATEGORIES =		devel
HOMEPAGE =		http://www.arg0.net/rlog
REVISION =		0

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m pthread ${LIBCXX}
MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=rlog/}
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
