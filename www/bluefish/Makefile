# Whom:	Oliver Sessink <oliver@lx.student.wau.nl>
# $OpenBSD: Makefile,v 1.2 2000/01/13 05:42:13 kevlo Exp $

DISTNAME=	bluefish-0.3.4
CATEGORIES=	www 
MASTER_SITES=	http://bluefish.linuxbox.com/download/ \
		http://student.wau.nl/~olivier/bluefish/download/ \
		http://ha-pc.cheque.uq.edu.au/download/

MAINTAINER=	seanc@cginfo.sk.ca	

RUN_DEPENDS=	weblint:${PORTSDIR}/www/weblint
LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gdk_imlib:${PORTSDIR}/graphics/imlib

GTK_CONFIG=	${X11BASE}/bin/gtk-config

USE_X_PREFIX=  yes
GNU_CONFIGURE= yes
CONFIGURE_ENV= GTK_CONFIG="${GTK_CONFIG}"

post-install:
	@strip ${PREFIX}/bin/bluefish
.if !defined(NOPORTDOCS)
	@${ECHO} "===>   Installing bluefish docs in ${PREFIX}/share/doc/bluefish"
	@${ECHO} "===>   A manual is available online at http://bluefish.linuxbox.com/manual/"
	@${MKDIR} ${PREFIX}/share/doc/bluefish && ${CHMOD} a+rx ${PREFIX}/share/doc/bluefish
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bluefish
.endif

.include <bsd.port.mk>
