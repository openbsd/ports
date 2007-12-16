# $OpenBSD: Makefile,v 1.1.1.1 2007/12/16 17:48:29 ajacoutot Exp $

COMMENT=	small dynamic DNS updater written in C

DISTNAME=	ez-ipupdate-3.0.11b7

CATEGORIES=	net

HOMEPAGE=	http://ez-ipupdate.com/

MAINTAINER=	Mitja Muzenic <mitja@kerberos.si>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c

MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ez-ipupdate
	${INSTALL_DATA} ${WRKSRC}/example* \
		${PREFIX}/share/examples/ez-ipupdate/

.include <bsd.port.mk>
