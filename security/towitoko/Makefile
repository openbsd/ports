COMMENT=		library and utilities for towitoko card readers

DISTNAME=		towitoko-2.0.7
REVISION =		3
CATEGORIES=		security
SHARED_LIBS=		towitoko	2.0
MODGNU_SHARED_LIBS=	towitoko	'-module'

HOMEPAGE=		http://www.geocities.com/cprados/

# LGPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c pthread

SITES=			http://www.geocities.com/cprados/files/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-static

EXAMPLES=		doc/reader.conf

post-install:
	@perl -pi -e "s,%%PREFIX%%,${TRUEPREFIX}," ${WRKSRC}/doc/reader.conf
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/towitoko
	cd ${WRKSRC} && ${INSTALL_DATA} ${EXAMPLES} \
	  ${PREFIX}/share/examples/towitoko

.include <bsd.port.mk>
