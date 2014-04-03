# $OpenBSD: Makefile,v 1.18 2014/04/03 15:47:59 ajacoutot Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-3.1.4
EPOCH=		0

CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://calcurse.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncursesw pthread

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,NEWS,TODO} \
		${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/doc/manual* ${PREFIX}/share/doc/calcurse

.include <bsd.port.mk>
