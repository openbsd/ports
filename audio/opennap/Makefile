# $OpenBSD: Makefile,v 1.7 2002/07/30 14:36:49 brad Exp $

COMMENT=	"opensource Napster(tm) server"

DISTNAME=	opennap-0.42
CATEGORIES=	audio net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opennap/}

HOMEPAGE=	http://opennap.sourceforge.net/

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
