# $OpenBSD: Makefile,v 1.5 2001/07/11 02:10:03 brad Exp $

COMMENT=	"opensource Napster(tm) server"

DISTNAME=	opennap-0.42
CATEGORIES=	audio net
NEED_VERSION=	1.413
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= opennap

HOMEPAGE=	http://opennap.sourceforge.net/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SYSCONFDIR=	/etc/opennap
SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-resume

DOCS=	README napster.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opennap
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA} ${WRKSRC}/sample.* ${PREFIX}/share/examples/opennap

.include <bsd.port.mk>
