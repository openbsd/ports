# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:41 sthen Exp $

COMMENT=	logging for c library
DISTNAME =	log4c-1.2.4
SHARED_LIBS +=  log4c                1.0      # 6.1
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=log4c/}

HOMEPAGE=	http://log4c.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += expat pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_DOT="" \
		ac_cv_path_DOXYGEN="" \
		ac_cv_path_LATEX=""

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/log4c/

.include <bsd.port.mk>
