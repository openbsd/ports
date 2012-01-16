# $OpenBSD: Makefile,v 1.3 2012/01/16 16:27:53 dhill Exp $

COMMENT =	event expression library
DISTNAME =	libee-0.3.2
SHARED_LIBS +=  ee                   0.0      # 0.0
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://www.libee.org/
MAINTAINER =	David Hill <dhill@mindcry.org>

# LGPLv2.1 
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c estr

MASTER_SITES =	${HOMEPAGE}/files/download/

REGRESS_FLAGS =		CFLAGS+=-I${LOCALBASE}/include
USE_LIBTOOL =		Yes

LIB_DEPENDS =		devel/libestr

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
