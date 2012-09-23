# $OpenBSD: Makefile,v 1.22 2012/09/23 19:33:02 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.4
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto kvm pthread ssl

MASTER_SITES=	${HOMEPAGE}/dist/

CONFIGURE_STYLE=gnu

USE_LIBTOOL=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/monit
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/monit
	cd ${WRKSRC} && ${INSTALL_DATA} README ${PREFIX}/share/doc/monit
	cd ${WRKSRC} && ${INSTALL_DATA} monitrc \
		${PREFIX}/share/examples/monit

.include <bsd.port.mk>
