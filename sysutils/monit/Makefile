# $OpenBSD: Makefile,v 1.33 2014/05/22 13:53:54 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.8.1

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto kvm pthread ssl

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/monit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
