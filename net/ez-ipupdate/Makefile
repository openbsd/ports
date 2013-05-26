# $OpenBSD: Makefile,v 1.5 2013/05/26 09:30:55 kirby Exp $

COMMENT=	small dynamic DNS updater written in C

DISTNAME=	ez-ipupdate-3.0.11b7
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	http://sourceforge.net/projects/ez-ipupdate/

MAINTAINER=	Mitja Muzenic <mitja@kerberos.si>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ez-ipupdate/}

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ez-ipupdate
	${INSTALL_DATA} ${WRKSRC}/example* \
		${PREFIX}/share/examples/ez-ipupdate/

.include <bsd.port.mk>
