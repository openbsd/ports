# $OpenBSD: Makefile,v 1.4 2000/02/01 19:43:32 jasoni Exp $

DISTNAME=	bluefish-0.3.5
CATEGORIES=	www 
MASTER_SITES=	http://bluefish.linuxbox.com/download/ \
		http://student.wau.nl/~olivier/bluefish/download/ \
		http://ha-pc.cheque.uq.edu.au/download/

MAINTAINER=	seanc@cginfo.sk.ca	

RUN_DEPENDS=	weblint:${PORTSDIR}/www/weblint
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gdk_imlib:${PORTSDIR}/graphics/imlib

GTK_CONFIG?=	${X11BASE}/bin/gtk-config

USE_GMAKE=	yes 	
GNU_CONFIGURE= 	yes
CONFIGURE_ENV= 	GTK_CONFIG="${GTK_CONFIG}"
CONFIGURE_ARGS= --with-install-location="${PREFIX}/lib/bluefish" 
CONFIGURE_ENV=  GTK_CONFIG="${GTK_CONFIG}" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		CFLAGS="-I${LOCALBASE}/include"
post-install:
	@strip ${PREFIX}/bin/bluefish
.if !defined(NOPORTDOCS)
	@echo "===>   Installing bluefish docs in ${PREFIX}/share/doc/bluefish"
	@echo "===>   A manual is available online at http://bluefish.linuxbox.com/manual/"
	@mkdir ${PREFIX}/share/doc/bluefish && ${CHMOD} a+rx ${PREFIX}/share/doc/bluefish
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bluefish
.endif

.include <bsd.port.mk>
