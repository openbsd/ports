# $OpenBSD: Makefile,v 1.17 2001/03/27 22:09:48 naddy Exp $

COMMENT=	"HTML editor for experienced web designers"

DISTNAME=	bluefish-0.6
CATEGORIES=	www 
NEED_VERSION=	1.364
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Couderc Damien <couderc.damien@wanadoo.fr>

MASTER_SITES=	http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/ \
		ftp://bluefish.advancecreations.com/pub/bluefish/downloads/ \
		http://bluefish.mrball.net/downloads/ \
		ftp://ftp.ratisbona.com/pub/bluefish/downloads/ \
		http://bluefish.shellhung.org/downloads/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	weblint::www/weblint
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_imlib::graphics/imlib

CONFIGURE_STYLE= gnu dest
CFLAGS+=	-I${LOCALBASE}/include

MANUAL=		${PREFIX}/share/doc/bluefish

post-install:
	${INSTALL_DATA_DIR} ${MANUAL}
	cd ${WRKSRC}/manual && \
	    find . -type d -exec ${INSTALL_DATA_DIR} ${MANUAL}/{} \; && \
	    find . -type f -exec ${INSTALL_DATA} {} ${MANUAL}/{} \;

.include <bsd.port.mk>
