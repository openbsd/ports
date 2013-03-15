# $OpenBSD: Makefile.inc,v 1.3 2013/03/15 15:13:36 sthen Exp $

CATEGORIES ?=	devel

HOMEPAGE ?=	http://www.vergenet.net/linux/vanessa/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITE_VANESSA ?=	${HOMEPAGE}download/

USE_LIBTOOL ?=		Yes

CONFIGURE_STYLE ?=	gnu

CONFIGURE_ARGS ?=	--disable-silent-rules
CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
