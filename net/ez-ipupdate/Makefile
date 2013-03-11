# $OpenBSD: Makefile,v 1.4 2013/03/11 11:35:46 espie Exp $

COMMENT=	small dynamic DNS updater written in C

DISTNAME=	ez-ipupdate-3.0.11b7
REVISION=	0

CATEGORIES=	net

HOMEPAGE=	http://ez-ipupdate.com/

MAINTAINER=	Mitja Muzenic <mitja@kerberos.si>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ez-ipupdate
	${INSTALL_DATA} ${WRKSRC}/example* \
		${PREFIX}/share/examples/ez-ipupdate/

.include <bsd.port.mk>
