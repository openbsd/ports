# $OpenBSD: Makefile,v 1.8 2002/08/10 01:14:04 naddy Exp $

COMMENT=	"opensource Napster(tm) server"

DISTNAME=	opennap-0.44
CATEGORIES=	audio net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=opennap/}

HOMEPAGE=	http://opennap.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	\
	--enable-email \
	--enable-resume \
	--datadir=${SYSCONFDIR}
#	--enable-chroot \  (breaks uid, gid, and ip lookup

DOCS=	FAQ README manual.html napster.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opennap
	cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/opennap
	${INSTALL_DATA} ${WRKSRC}/sample.* ${PREFIX}/share/examples/opennap

.include <bsd.port.mk>
