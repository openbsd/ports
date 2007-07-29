# $OpenBSD: Makefile,v 1.7 2007/07/29 16:32:15 ajacoutot Exp $

COMMENT=	print information about the content and structure of a DVD

DISTNAME=	lsdvd-0.16
CATEGORIES=	multimedia

HOMEPAGE=	http://untrepid.com/lsdvd.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lsdvd/}

LIB_DEPENDS=	dvdread.>=3::devel/libdvdread

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
