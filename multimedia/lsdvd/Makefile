# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:44 espie Exp $

COMMENT=	print information about the content and structure of a DVD

DISTNAME=	lsdvd-0.16
REVISION=	2
CATEGORIES=	multimedia

HOMEPAGE=	http://lsdvd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c dvdread>=5

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lsdvd/}

LIB_DEPENDS=	devel/libdvdread>=4.2.0

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
