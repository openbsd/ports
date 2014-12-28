# $OpenBSD: Makefile,v 1.36 2014/12/28 12:33:57 jasper Exp $

COMMENT=	monitoring and managing daemons utility

DISTNAME=	monit-5.11

CATEGORIES=	sysutils

HOMEPAGE=	http://www.mmonit.com/monit/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto kvm pthread ssl

MASTER_SITES=	${HOMEPAGE}/dist/

# XXX: Switch back to 'gnu' once patch-configure_ac has been merged
AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/monit
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/monit
	${INSTALL_DATA} ${WRKSRC}/monitrc ${PREFIX}/share/examples/monit

.include <bsd.port.mk>
