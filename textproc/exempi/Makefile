# $OpenBSD: Makefile,v 1.1.1.1 2008/11/18 12:43:28 okan Exp $

COMMENT =		implementation of XMP
DISTNAME =		exempi-2.0.2
CATEGORIES =		textproc

SHARED_LIBS +=		exempi		1.0 # .4.4

HOMEPAGE =		http://libopenraw.freedesktop.org/wiki/Exempi

MAINTAINER =		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += expat pthread

MASTER_SITES =		http://libopenraw.freedesktop.org/download/
LIB_DEPENDS =		iconv.>=4::converters/libiconv
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-unittest=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv -lpthread" \
			ac_cv_tls=none

.include <bsd.port.mk>
