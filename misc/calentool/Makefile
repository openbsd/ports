# $OpenBSD: Makefile,v 1.5 2000/03/23 23:09:02 turan Exp $

BROKEN=		depend xview is broken

DISTNAME=	calentool-2.3
PKGNAME=	calentool-2.3
CATEGORIES=	misc x11
NEED_VERSION=	1.223
MASTER_SITES = http://www.darwinsys.com/freeware/

NO_CDROM=   "NOFEE: can not sell"

LIB_DEPENDS=    xview.3.:x11/xview-lib

WRKDIST     = ${WRKDIR}/xcalentool-2.3

USE_IMAKE=	Yes
USE_X11=	Yes

pre-configure:
	@if ! [ -f /usr/X11R6/include/images/hglass.cursor ]; then \
		echo "Installing hglass.cursor in /usr/X11R6/include/images."; \
		${INSTALL_DATA} files/hglass.cursor /usr/X11R6/include/images; \
	fi

.include <bsd.port.mk>
