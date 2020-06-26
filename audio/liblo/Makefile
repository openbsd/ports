# $OpenBSD: Makefile,v 1.12 2020/06/26 08:49:06 inoguchi Exp $

COMMENT =		Lightweight Open Sound Control (OSC) implementation

DISTNAME =		liblo-0.31

SHARED_LIBS +=		lo	1.0	# 11.1

CATEGORIES =		audio

HOMEPAGE =		http://liblo.sourceforge.net/

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pthread

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		ac_cv_prog_DOXYGEN=""

.include <bsd.port.mk>
