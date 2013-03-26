# $OpenBSD: Makefile.inc,v 1.5 2013/03/26 16:35:03 ajacoutot Exp $

CATEGORIES ?=	devel

HOMEPAGE ?=	http://www.vergenet.net/linux/vanessa/

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITE_VANESSA ?=	${HOMEPAGE}download/

CONFIGURE_STYLE ?=	gnu

CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
