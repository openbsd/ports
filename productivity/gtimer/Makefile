# $OpenBSD: Makefile,v 1.4 2004/12/02 21:13:44 alek Exp $

COMMENT=		"GTK-based time tracker"

DISTNAME=		gtimer-1.1.5
CATEGORIES=     	productivity x11

HOMEPAGE=		http://www.radix.net/~cknudsen/gtimer/

MAINTAINER=		Heikki Korpela <heko@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi Xss c glib gmodule iconv intl m 

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gtk.1.2::x11/gtk+  \
			gdk.1.2::x11/gtk+

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		concurrent

post-install:
	${INSTALL_MAN} ${WRKSRC}/gtimer.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gtimer
	${INSTALL_DATA} ${WRKSRC}/FAQ.html ${PREFIX}/share/doc/gtimer
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/gtimer

.include <bsd.port.mk>
