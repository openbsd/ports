# $OpenBSD: Makefile,v 1.31 2014/11/07 10:05:29 landry Exp $

COMMENT=	library functions to access Microsoft Word/Excel files

REVISION =	0
DISTNAME=	wv2-0.4.2
SHARED_LIBS +=	wv2                  4.0      # .1.8
CATEGORIES=	converters
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wvware/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://wvware.sourceforge.net/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += glib-2.0 gsf-1 m stdc++ z

MODULES=	converters/libiconv \
		devel/cmake

LIB_DEPENDS+=	devel/glib2 \
		devel/libgsf

CONFIGURE_ARGS +=-DLIBwv2_VERSION=${LIBwv2_VERSION}

.include <bsd.port.mk>
