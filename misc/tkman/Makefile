# $OpenBSD: Makefile,v 1.17 2003/12/27 23:38:02 jose Exp $

COMMENT=	"Tcl/Tk-based manual browser"

DISTNAME=	tkman-2.1
CATEGORIES=	misc 

HOMEPAGE=	http://tkman.sourceforge.net/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkman/}

LIB_DEPENDS=	tk84::x11/tk/8.4
RUN_DEPENDS=	::textproc/rman \
		::textproc/glimpse

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/tkman-help.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
