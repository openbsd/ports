# $OpenBSD: Makefile,v 1.10 2017/08/20 10:24:00 jasper Exp $

COMMENT =		leightweight open sound control (OSC) implementation
DISTNAME =		liblo-0.29

SHARED_LIBS +=  lo                   0.1      # 9.0
CATEGORIES =		audio
HOMEPAGE =		http://liblo.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pthread
MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=liblo/}
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV=		ac_cv_prog_DOXYGEN=""

.include <bsd.port.mk>
