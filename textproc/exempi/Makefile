# $OpenBSD: Makefile,v 1.5 2013/03/11 11:42:41 espie Exp $

COMMENT =		implementation of XMP
DISTNAME =		exempi-2.1.1
REVISION =		0

CATEGORIES =		textproc

SHARED_LIBS +=		exempi		1.0 # .5.1

HOMEPAGE =		http://libopenraw.freedesktop.org/wiki/Exempi

MAINTAINER =		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += expat z m stdc++

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
