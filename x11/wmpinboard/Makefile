# $OpenBSD: Makefile,v 1.20 2015/02/16 22:57:14 naddy Exp $

COMMENT=		wm-dockapp; resembling a miniature pin board

DISTNAME=		wmpinboard-1.0
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c

SEPARATE_BUILD=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

post-patch:
	@cd ${WRKSRC}/src && rm -f getopt*

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/wmpinboard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/wmpinboard.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
