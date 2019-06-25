# $OpenBSD: Makefile,v 1.62 2019/06/25 20:25:22 sthen Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.25.3
REVISION=	0

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
