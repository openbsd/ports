# $OpenBSD: Makefile,v 1.7 2000/02/22 22:55:07 jasoni Exp $

DISTNAME=	bluefish-0.3.5
CATEGORIES=	www 
MASTER_SITES=	http://bluefish.linuxbox.com/download/ \
		http://student.wau.nl/~olivier/bluefish/download/ \
		http://ha-pc.cheque.uq.edu.au/download/

MAINTAINER=	seanc@cginfo.sk.ca	

LICENSE_TYPE=           GNU
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes


RUN_DEPENDS=	weblint:${PORTSDIR}/www/weblint
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gdk_imlib:${PORTSDIR}/graphics/imlib

GTK_CONFIG=	${X11BASE}/bin/gtk-config

USE_X11=	Yes
USE_GMAKE=	Yes 	
GNU_CONFIGURE= 	Yes
CONFIGURE_ENV= 	GTK_CONFIG="${GTK_CONFIG}"
CONFIGURE_ENV=  GTK_CONFIG="${GTK_CONFIG}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include"
do-install:
	@mkdir -p ${PREFIX}/lib/bluefish
	${INSTALL_PROGRAM} ${WRKSRC}/src/bluefish ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/data/php3_functions ${PREFIX}/lib/bluefish
	${INSTALL_DATA} ${WRKSRC}/data/rxml_functions ${PREFIX}/lib/bluefish
	${INSTALL_DATA} ${WRKSRC}/data/ssi_functions ${PREFIX}/lib/bluefish
	${INSTALL_DATA} ${WRKSRC}/po/de.gmo ${PREFIX}/share/locale/de/LC_MESSAGES/bluefish.mo
	${INSTALL_DATA} ${WRKSRC}/po/fr.gmo ${PREFIX}/share/locale/fr/LC_MESSAGES/bluefish.mo
	${INSTALL_DATA} ${WRKSRC}/po/da.gmo ${PREFIX}/share/locale/da/LC_MESSAGES/bluefish.mo
	
post-install:
	@strip ${PREFIX}/bin/bluefish
.if !defined(NOPORTDOCS)
	@echo "===>   Installing bluefish docs in ${PREFIX}/share/doc/bluefish"
	@echo "===>   A manual is available online at http://bluefish.linuxbox.com/manual/"
	@mkdir -p ${PREFIX}/share/doc/bluefish && ${CHMOD} a+rx ${PREFIX}/share/doc/bluefish
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bluefish
.endif

.include <bsd.port.mk>
