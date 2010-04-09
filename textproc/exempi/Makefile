# $OpenBSD: Makefile,v 1.3 2010/04/09 08:59:56 ajacoutot Exp $

COMMENT =		implementation of XMP
DISTNAME =		exempi-2.1.1

CATEGORIES =		textproc

SHARED_LIBS +=		exempi		1.0 # .5.1

HOMEPAGE =		http://libopenraw.freedesktop.org/wiki/Exempi

MAINTAINER =		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += expat z

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
