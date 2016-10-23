# $OpenBSD: Makefile,v 1.49 2016/10/23 08:12:04 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.20.0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# AGPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto m kvm pthread ssl z

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/monit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
