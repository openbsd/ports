# $OpenBSD: Makefile,v 1.7 2017/07/23 09:26:28 espie Exp $

SHARED_LIBS +=  courier-unicode		0.0 # 2.0

COMMENT =		courier unicode library

DISTNAME =		courier-unicode-1.4
REVISION =		0

CATEGORIES =		mail devel

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://www.courier-mta.org/imap/
MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		iconv m ${COMPILER_LIBCXX}
LIB_DEPENDS =		converters/libiconv

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
