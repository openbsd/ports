# $OpenBSD: Makefile,v 1.6 2015/03/16 18:07:43 naddy Exp $

COMMENT=	logging for c library
DISTNAME=	log4c-1.2.1
REVISION=	2
SHARED_LIBS +=  log4c                0.0      # 4.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=log4c/}

HOMEPAGE=	http://log4c.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += expat


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_DOT="" \
		ac_cv_path_DOXYGEN="" \
		ac_cv_path_LATEX=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/log4c/

.include <bsd.port.mk>
