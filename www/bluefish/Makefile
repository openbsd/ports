# $OpenBSD: Makefile,v 1.16 2001/01/09 16:34:54 naddy Exp $

DISTNAME=	bluefish-0.6
CATEGORIES=	www 
NEED_VERSION=	1.312
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Couderc Damien <couderc.damien@wanadoo.fr>

MASTER_SITES=	${HOMEPAGE}download/ \
		http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	weblint::www/weblint
LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gdk_imlib::graphics/imlib

CONFIGURE_STYLE= gnu dest
CONFIGURE_ENV=	CPPFLAGS='-I${LOCALBASE}/include' \
		LDFLAGS='-L${LOCALBASE}/lib'
MANUAL=		${PREFIX}/share/doc/bluefish

post-install:
	${INSTALL_DATA_DIR} ${MANUAL}
	cd ${WRKSRC}/manual && \
	    find . -type d -exec ${INSTALL_DATA_DIR} ${MANUAL}/{} \; && \
	    find . -type f -exec ${INSTALL_DATA} {} ${MANUAL}/{} \;

.include <bsd.port.mk>
