# $OpenBSD: Makefile,v 1.11 2011/01/05 17:37:33 stu Exp $

COMMENT =	bind keys or mouse buttons to shell commands under X11
DISTNAME =	xbindkeys-1.8.4
CATEGORIES =	x11

HOMEPAGE =	http://www.nongnu.org/xbindkeys/xbindkeys.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 c

# not on MASTER_SITE_SAVANNAH
MASTER_SITES =	http://www.nongnu.org/xbindkeys/

MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
SEPARATE_BUILD =concurrent
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-guile
NO_REGRESS =	Yes

pre-configure:
	${MODTCL_WISH_ADJ} ${WRKSRC}/xbindkeys_show

.include <bsd.port.mk>
