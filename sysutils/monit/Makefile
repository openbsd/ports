# $OpenBSD: Makefile,v 1.61 2019/05/01 19:21:57 landry Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.25.3

CATEGORIES=	sysutils

HOMEPAGE=	https://www.mmonit.com/monit/

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

# AGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m kvm pthread ssl z

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

SUBST_VARS=	LOCALSTATEDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/monitrc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/monit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
