# $OpenBSD: Makefile,v 1.9 2017/08/04 23:05:01 giovanni Exp $

SHARED_LIBS +=  courier-unicode		1.0 # 2.0

COMMENT =		courier unicode library

DISTNAME =		courier-unicode-2.0

CATEGORIES =		mail devel

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://www.courier-mta.org/imap/
MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

COMPILER =		gcc
WANTLIB +=		iconv m ${COMPILER_LIBCXX}
LIB_DEPENDS =		converters/libiconv

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
