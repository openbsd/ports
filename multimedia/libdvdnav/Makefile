# $OpenBSD: Makefile,v 1.1.1.1 2004/12/16 07:37:59 jolan Exp $

COMMENT=	"library for developers of multimedia applications"
DISTNAME=	libdvdnav-0.1.9
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dvd/}

HOMEPAGE=	http://dvd.sourceforge.net/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	pthread

LIB_DEPENDS=	dvdread.3.0::devel/libdvdread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
	LDFLAGS="-L${LOCALBASE}/lib" LIBS="-pthread"

.include <bsd.port.mk>
