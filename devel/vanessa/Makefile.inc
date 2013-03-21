# $OpenBSD: Makefile.inc,v 1.4 2013/03/21 08:45:16 ajacoutot Exp $

CATEGORIES ?=	devel

HOMEPAGE ?=	http://www.vergenet.net/linux/vanessa/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITE_VANESSA ?=	${HOMEPAGE}download/

CONFIGURE_STYLE ?=	gnu

CONFIGURE_ARGS ?=	--disable-silent-rules
CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
