# $OpenBSD: Makefile,v 1.2 2005/10/02 20:30:47 jolan Exp $

COMMENT=	"library for developers of multimedia applications"
DISTNAME=	libdvdnav-0.1.10
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dvd/}

HOMEPAGE=	http://dvd.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes

WANTLIB=	pthread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib" LIBS="-pthread"

.include <bsd.port.mk>
