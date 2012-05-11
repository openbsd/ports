# $OpenBSD: Makefile,v 1.1.1.1 2012/05/11 11:43:49 ajacoutot Exp $

COMMENT=	logging for c library
DISTNAME=	log4c-1.2.1
SHARED_LIBS +=  log4c                0.0      # 4.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=log4c/}

HOMEPAGE=	http://log4c.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += expat

USE_LIBTOOL=   	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_DOT="" \
		ac_cv_path_DOXYGEN="" \
		ac_cv_path_LATEX=""
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/log4c/

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

.include <bsd.port.mk>
