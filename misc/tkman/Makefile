# $OpenBSD: Makefile,v 1.15 2002/10/27 21:07:54 naddy Exp $

COMMENT=	"Tcl/Tk-based manual browser"

DISTNAME=	tkman-2.1
CATEGORIES=	misc 

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

HOMEPAGE=	http://tkman.sourceforge.net/

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkman/}

LIB_DEPENDS=	tk83.1.::x11/tk/8.3
RUN_DEPENDS=	::textproc/rman \
		::textproc/glimpse

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/tkman-help.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
