# $OpenBSD: Makefile,v 1.9 2017/04/23 21:11:53 rsadowski Exp $

COMMENT =		leightweight open sound control (OSC) implementation
DISTNAME =		liblo-0.28
REVISION =		0

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
