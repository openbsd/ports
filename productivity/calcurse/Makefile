# $OpenBSD: Makefile,v 1.13 2011/11/06 08:51:42 ajacoutot Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-2.9.2
CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://calcurse.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m ncursesw pthread

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' ${WRKSRC}/configure

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,NEWS,TODO} \
		${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/doc/manual* ${PREFIX}/share/doc/calcurse

.include <bsd.port.mk>
