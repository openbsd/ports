# $OpenBSD: Makefile,v 1.1.1.1 2004/12/07 13:21:43 alek Exp $

COMMENT=		"Jabber client with whiteboard communication" 

DISTNAME=		Coccinella-0.95.1Src
PKGNAME=		${DISTNAME:S/Src$//:L}
CATEGORIES=		net

HOMEPAGE=		http://hem.fyristorg.com/matben/

MAINTAINER=		Marc Bruenink <marc@bruenink.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=coccinella/}	

RUN_DEPENDS=		wish8.4::x11/tk/8.4

USE_X11=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

post-patch:
	@perl -pi -e 's|exec wish|exec wish8.4|g'\
		 ${WRKSRC}/Coccinella.tcl
	@perl -pi -e 's|parray chatstate xevent,\*||' \
		${WRKSRC}/jabber/Chat.tcl
	
do-install:
	${INSTALL_SCRIPT_DIR} ${PREFIX}/lib/coccinella
	@cd ${WRKSRC} ; tar cf - TclXML [c-z]* | \
		tar xf - -C ${PREFIX}/lib/coccinella/
	${INSTALL_SCRIPT} ${WRKSRC}/Coccinella.tcl ${PREFIX}/lib/coccinella/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccinella
	@cd ${WRKSRC} && ${INSTALL_DATA} README README-jabber README-smileys \
		${PREFIX}/share/doc/coccinella/
	
.include <bsd.port.mk>
