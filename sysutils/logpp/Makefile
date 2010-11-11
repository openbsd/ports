# $OpenBSD: Makefile,v 1.7 2010/11/11 19:00:49 espie Exp $

COMMENT=	log file preprocessor

DISTNAME=	logpp-0.16
CATEGORIES=	sysutils

MAINTAINER=	Okan Demirmen <okan@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB+= c pcre

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=logpp/}

LIB_DEPENDS=	::devel/pcre

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =	Yes

.include <bsd.port.mk>
