# OpenBSD makefile for:	afterstep
# Version required:	1.0
# Date created:		6 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 1998/06/13 23:27:04 marc Exp $
#

DISTNAME=	AfterStep-1.0
PKGNAME=	afterstep-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://afterstep.foo.net/pub/AfterStep/

MAINTAINER=	don@OpenBSD.ORG

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_X11=	yes
INSTALL_TARGET=	install install.man
MAN1=		afterstep.1 asclock.1 Animate.1 Audio.1 Auto.1 Banner.1 Pager.1 Wharf.1

pre-build:
		@ cd ${WRKSRC}; ${SETENV} sh MakeMakefiles

post-install:	
		@ ${MKDIR} -p ${PREFIX}/lib/X11/afterstep/backgrounds/
		${INSTALL_DATA} ${WRKSRC}/backgrounds/* ${PREFIX}/lib/X11/afterstep/backgrounds/
		@ ${MKDIR} -p ${PREFIX}/lib/X11/afterstep/sounds/
		${INSTALL_DATA} ${WRKSRC}/sounds/* ${PREFIX}/lib/X11/afterstep/sounds/
		@ ${MKDIR} -p ${PREFIX}/include/X11/pixmaps/
.if defined(USE_HICOLOR_ICONS)
		${INSTALL_DATA} ${WRKSRC}/icons/*.xpm ${PREFIX}/include/X11/pixmaps/
.else
.if !defined(BATCH)
		@${ECHO} "===>  Note: to use the hi-color icons,"
		@${ECHO} "      reinstall this port with -DUSE_HICOLOR_ICONS"
		@${ECHO} "      defined"
.endif
		@for file in AFstep.xpm penguin.xpm monitor_bsd.xpm; do \
			${CP} ${FILESDIR}/$$file ${WRKSRC}/icons/8bit; \
		done
		${INSTALL_DATA} ${WRKSRC}/icons/8bit/*.xpm ${PREFIX}/include/X11/pixmaps/
.endif
		@ ${MKDIR} -p ${PREFIX}/lib/X11/afterstep/doc/
		@for file in CHANGES CREDITS README README.8bit INSTALL FAQ module-interface.txt; do \
			${INSTALL_DATA} ${WRKSRC}/$$file ${PREFIX}/lib/X11/afterstep/doc/; \
		done

.include <bsd.port.mk>
