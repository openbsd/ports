# $OpenBSD: Makefile,v 1.19 2016/04/09 20:14:48 naddy Exp $

COMMENT =		audio codec for lossless, lossy and hybrid compression

DISTNAME =		wavpack-4.70.0
REVISION =		2
CATEGORIES =		audio

HOMEPAGE =		http://www.wavpack.com/

SHARED_LIBS +=		wavpack		0.1	# 2.5

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c iconv m

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.tar.bz2

LIB_DEPENDS =		converters/libiconv

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
