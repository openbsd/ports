# $OpenBSD: Makefile,v 1.2 2000/03/24 22:12:04 espie Exp $

DISTNAME=		icewm-1.0.2	
CATEGORIES=     	x11	
NEED_VERSION=		1.89


MAINTAINER=		seanc@cginfo.sk.ca	

LICENSE_TYPE=		"LGPL"
PERMIT_PACKAGE_CDROM=	"Yes"
PERMIT_PACKAGE_FTP=	"Yes"
PERMIT_DISTFILES_CDROM=	"Yes"
PERMIT_DISTFILES_FTP=	"Yes"

MASTER_SITES=		http://download.sourceforge.net/icewm/ \
			http://www.physik.TU-Berlin.DE/~ibex/ports/distfiles/	
EXTRACT_SUFX=		.src.tar.gz

USE_GMAKE=		Yes
USE_X11=		Yes
GNU_CONFIGURE=		Yes

post-install:
	@echo "Installing docs to ${PREFIX}/share/docs/icewm"
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icewm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/icewm/doc
	cd ${WRKSRC} && ${INSTALL_DATA} COPYING README FAQ \
		${PREFIX}/share/doc/icewm
	cd ${WRKSRC}/doc && ${INSTALL_DATA} *.html \
		${PREFIX}/share/doc/icewm/doc 	
.include <bsd.port.mk>
