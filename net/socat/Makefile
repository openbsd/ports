COMMENT=	relay for bidirectional data transfer

DISTNAME=	socat-1.8.1.3
CATEGORIES=	net

HOMEPAGE=	http://www.dest-unreach.org/socat/

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>, \
		Mark Patruck <mark@wrapped.cx>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${HOMEPAGE}/download/

WANTLIB=	c readline crypto util ssl

RUN_DEPENDS=	shells/bash

CONFIGURE_STYLE=gnu

CONFIGURE_ARGS +=	--disable-libwrap

pre-build:
	${SUBST_CMD} ${WRKSRC}/doc/socat.1
	${SUBST_CMD} ${WRKSRC}/doc/socat.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/socat
.for file in FAQ README SECURITY doc/*.html doc/dest-unreach.css
	${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/socat
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/socat
	${INSTALL_DATA} ${WRKSRC}/*.sh ${PREFIX}/share/examples/socat

.include <bsd.port.mk>
