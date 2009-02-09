# $OpenBSD: Makefile,v 1.2 2009/02/09 15:35:50 ajacoutot Exp $

COMMENT =		implementation of XMP
DISTNAME =		exempi-2.0.2
PKGNAME =		${DISTNAME}p0

CATEGORIES =		textproc

SHARED_LIBS +=		exempi		1.0 # .4.4

HOMEPAGE =		http://libopenraw.freedesktop.org/wiki/Exempi

MAINTAINER =		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += expat

MODULES =		converters/libiconv
MASTER_SITES =		http://libopenraw.freedesktop.org/download/
USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-unittest=no
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv -pthread" \
			ac_cv_tls=none

.include <bsd.port.mk>
