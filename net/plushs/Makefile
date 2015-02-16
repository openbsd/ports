# $OpenBSD: Makefile,v 1.9 2015/02/16 22:57:11 naddy Exp $

COMMENT=		simple hostname scanner

DISTNAME=		plushs-1.2
CATEGORIES=		net
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=plushs/}

HOMEPAGE=		http://plushs.sourceforge.net

MAINTAINER=		Jose Jimenez Garcia <pluf@wanadoo.es>

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/plushs
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/plushs
	${INSTALL_DATA} ${WRKSRC}/patterns.list ${PREFIX}/share/doc/plushs

.include <bsd.port.mk>
