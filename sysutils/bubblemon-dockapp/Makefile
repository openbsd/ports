# $OpenBSD: Makefile,v 1.8 2002/09/17 15:22:26 wilfried Exp $

COMMENT=		'wm-dockapp; display CPU and memory load'

DISTNAME=		bubblemon-dockapp-1.4
CATEGORIES=     	sysutils x11 x11/windowmaker

HOMEPAGE=		http://www.ne.jp/asahi/linux/timecop/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}software/

LIB_DEPENDS=		gtk.1,gdk.1::x11/gtk+

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} $(WRKBUILD)/bubblemon ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bubblemon/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/bubblemon/

.include <bsd.port.mk>
