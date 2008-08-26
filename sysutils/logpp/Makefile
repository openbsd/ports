# $OpenBSD: Makefile,v 1.5 2008/08/26 00:03:54 okan Exp $

COMMENT=	log file preprocessor

DISTNAME=	logpp-0.16
CATEGORIES=	sysutils

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=logpp/}

LIB_DEPENDS=	pcre::devel/pcre

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
