# $OpenBSD: Makefile,v 1.2 2000/09/03 07:02:06 brad Exp $

DISTNAME=	opennap-0.36
CATEGORIES=	audio net
NEED_VERSION=	1.322
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= opennap

HOMEPAGE=	http://opennap.sourceforge.net/

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-resume

DOCS=	README napster.txt

post-install:
	(echo "${PREFIX}/share/opennap"; echo "admin"; echo "opennap"; echo "") | ${WRKSRC}/setup
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opennap
	@chown -R nobody:nobody ${PREFIX}/share/opennap
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA} ${WRKSRC}/sample.* ${PREFIX}/share/examples/opennap

.include <bsd.port.mk>
