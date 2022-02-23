# $OpenBSD: Makefile,v 1.71 2022/02/23 16:25:48 sthen Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.31.0

CATEGORIES=	sysutils

HOMEPAGE=	https://www.mmonit.com/monit/

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

# AGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m kvm pthread ssl z

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

# Must specify C99 for base-gcc
CFLAGS+=	-std=c99

SUBST_VARS=	LOCALSTATEDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/monitrc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
