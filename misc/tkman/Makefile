# $OpenBSD: Makefile,v 1.22 2010/11/19 07:23:12 espie Exp $

COMMENT=	Tcl/Tk-based manual browser

DISTNAME=	tkman-2.1
REVISION=	1
CATEGORIES=	misc 

HOMEPAGE=	http://tkman.sourceforge.net/

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkman/}

MODULES=	x11/tk
MODTCL_VERSION=	8.4
MODTK_VERSION=	8.4
RUN_DEPENDS=	${MODTK_RUN_DEPENDS} \
		textproc/rman \
		textproc/glimpse

NO_REGRESS=	Yes

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkman ${WRKSRC}/retkman
	${INSTALL_SCRIPT} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/tkman-help.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
