# $OpenBSD: Makefile,v 1.13 2012/05/03 08:14:59 ajacoutot Exp $

COMMENT=	print information about the content and structure of a DVD

DISTNAME=	lsdvd-0.16
REVISION=	2
CATEGORIES=	multimedia

HOMEPAGE=	http://lsdvd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c dvdread>=5

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lsdvd/}

LIB_DEPENDS=	devel/libdvdread>=4.2.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
