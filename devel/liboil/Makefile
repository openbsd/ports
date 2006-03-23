# $OpenBSD: Makefile,v 1.5 2006/03/23 18:05:55 bernd Exp $

COMMENT=	"library of optimized inner loops"

DISTNAME=	liboil-0.3.7

SHARED_LIBS=	oil-0.3 1.0

CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://liboil.freedesktop.org/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

BUILD_DEPENDS+=		:pkgconfig->=0.15.0:devel/pkgconfig

WANTLIB=		m

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-glib

.include <bsd.port.mk>
