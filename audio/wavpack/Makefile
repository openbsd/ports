# $OpenBSD: Makefile,v 1.1.1.1 2009/01/10 02:08:34 sthen Exp $

COMMENT =		Audio codec for lossless, lossy and hybrid compression

DISTNAME =		wavpack-4.50.1
CATEGORIES =		audio

HOMEPAGE =		http://www.wavpack.com/

SHARED_LIBS +=		wavpack		0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}			
EXTRACT_SUFX =		.tar.bz2

WANTLIB =		c m

MODULES =		converters/libiconv 

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-libiconv-prefix="${LOCALBASE}"
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
