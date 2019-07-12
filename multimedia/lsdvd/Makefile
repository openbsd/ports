# $OpenBSD: Makefile,v 1.16 2019/07/12 20:47:56 sthen Exp $

COMMENT=		print information about the content and structure of a DVD

DISTNAME=		lsdvd-0.17
CATEGORIES=		multimedia

HOMEPAGE=		http://lsdvd.sourceforge.net/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c dvdread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lsdvd/}

LIB_DEPENDS=		devel/libdvdread

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
