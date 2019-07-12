# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:34 sthen Exp $

COMMENT =	fork of cdparanoia that uses libcdio for CDROM access
# 10.2 is the cdparanoia version that this is based upon.
# 2.0.0 is the actual version number.
DISTNAME =	libcdio-paranoia-10.2+2.0.0
PKGNAME =	libcdio-paranoia-2.0.0
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS +=  cdio_cdda                 1.0 # 2.0
SHARED_LIBS +=  cdio_paranoia             1.0 # 2.0

CATEGORIES =	audio
HOMEPAGE =	https://www.gnu.org/software/libcdio/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c cdio iconv m

USE_GMAKE =		Yes

MASTER_SITES =		${MASTER_SITE_GNU:=libcdio/}

LIB_DEPENDS =		audio/libcdio>=2.0.0

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
