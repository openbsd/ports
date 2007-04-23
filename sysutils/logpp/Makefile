# $OpenBSD: Makefile,v 1.1.1.1 2007/04/23 09:04:41 msf Exp $

COMMENT=	"log file preprocessor"

DISTNAME=	logpp-0.13
CATEGORIES=	sysutils

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# GPL
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
