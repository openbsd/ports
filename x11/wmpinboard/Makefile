# $OpenBSD: Makefile,v 1.17 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; resembling a miniature pin board

DISTNAME=		wmpinboard-1.0
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c

MASTER_SITES=		${HOMEPAGE}

SEPARATE_BUILD=		Yes
USE_GROFF =		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

post-patch:
	@cd ${WRKSRC}/src && rm -f getopt*

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/wmpinboard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/wmpinboard.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
