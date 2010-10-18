# $OpenBSD: Makefile,v 1.11 2010/10/18 21:25:09 espie Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-2.8
CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://culot.org/calcurse

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp2.culot.org/culot/

WANTLIB=	c m ncurses pthread

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/{AUTHORS,NEWS,TODO} \
		${PREFIX}/share/doc/calcurse
	${INSTALL_DATA} ${WRKSRC}/doc/manual* ${PREFIX}/share/doc/calcurse

.include <bsd.port.mk>
