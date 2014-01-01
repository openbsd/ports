# $OpenBSD: Makefile,v 1.10 2014/01/01 20:46:28 naddy Exp $

COMMENT=	log file preprocessor

DISTNAME=	logpp-0.16
CATEGORIES=	sysutils

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB+= c pcre

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=logpp/}

LIB_DEPENDS=	devel/pcre

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
