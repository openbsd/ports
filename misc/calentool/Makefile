# $OpenBSD: Makefile,v 1.1.1.1 1998/09/30 16:27:52 ian Exp $
#

DISTNAME=	calentool-2.3
PKGNAME=	calentool-2.3
CATEGORIES=	misc x11
MASTER_SITES = http://www.darwinsys.com/freeware/

NO_CDROM=   "NOFEE: can not sell"

LIB_DEPENDS=    xview\\.3.*:${PORTSDIR}/x11/xview-lib

WRKSRC     = ${WRKDIR}/xcalentool-2.3

USE_IMAKE=	yes
USE_X11=	yes

pre-configure:
	@if ! [ -f /usr/X11R6/include/images/hglass.cursor ]; then \
		echo "Installing hglass.cursor in /usr/X11R6/include/images."; \
		${INSTALL_DATA} files/hglass.cursor /usr/X11R6/include/images; \
	fi

.include <bsd.port.mk>
