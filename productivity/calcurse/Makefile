# $OpenBSD: Makefile,v 1.15 2013/03/11 11:37:54 espie Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-2.9.2
REVISION=	0
CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://calcurse.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncursesw pthread

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,NEWS,TODO} \
		${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/doc/manual* ${PREFIX}/share/doc/calcurse

.include <bsd.port.mk>
