CATEGORIES ?=	devel

HOMEPAGE ?=	http://www.vergenet.net/linux/vanessa/

# LGPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITE_VANESSA ?=	${HOMEPAGE}download/

CONFIGURE_STYLE ?=	gnu

CONFIGURE_ENV ?=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
