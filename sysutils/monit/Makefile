# $OpenBSD: Makefile,v 1.47 2016/05/27 10:06:47 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.18

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# AGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m kvm pthread ssl

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/monit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
