# $OpenBSD: Makefile,v 1.4 2006/02/07 09:46:27 xsa Exp $

COMMENT=	"print information about the content and structure of a DVD"

DISTNAME=	lsdvd-0.10
CATEGORIES=	multimedia

HOMEPAGE=	http://untrepid.com/acidrip/lsdvd.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=acidrip/}

LIB_DEPENDS=	dvdread.3.0::devel/libdvdread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
