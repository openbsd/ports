# $OpenBSD: Makefile,v 1.1.1.1 2015/04/28 07:06:37 giovanni Exp $

SHARED_LIBS +=  unicode                   0.0 # 1.0

COMMENT =		courier unicode library

DISTNAME =		courier-unicode-1.1

CATEGORIES =		mail devel

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=courier/}
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://www.courier-mta.org/imap/
MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=		m stdc++
MODULES =		converters/libiconv

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ENV =		LDFLAGS="-L${LOCALBASE}/lib" \
			CXXFLAGS="-I${LOCALBASE}/include" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
