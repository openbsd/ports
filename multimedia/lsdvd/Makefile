# $OpenBSD: Makefile,v 1.8 2010/06/28 19:22:50 ckuethe Exp $

COMMENT=	print information about the content and structure of a DVD

DISTNAME=	lsdvd-0.16
PKGNAME=	${DISTNAME}p0
CATEGORIES=	multimedia

HOMEPAGE=	http://untrepid.com/lsdvd/

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
