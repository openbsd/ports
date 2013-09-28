# $OpenBSD: Makefile,v 1.29 2013/09/28 08:33:24 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.6

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto kvm pthread ssl

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu


post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/monit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monit
	cd ${WRKSRC} && ${INSTALL_DATA} README ${PREFIX}/share/doc/monit
	cd ${WRKSRC} && ${INSTALL_DATA} monitrc \
		${PREFIX}/share/examples/monit

.include <bsd.port.mk>
