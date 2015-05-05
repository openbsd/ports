# $OpenBSD: Makefile,v 1.25 2015/05/05 17:00:21 sthen Exp $

COMMENT=		neat theme manager for Window Maker

DISTNAME=		wmthemeinstall-0.62
CATEGORIES=		x11 x11/windowmaker

REVISION=		3

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB+= X11 Xext Xi c gdk glib gmodule gtk m xcb z

MODULES=		devel/gettext

RUN_DEPENDS=		x11/windowmaker
LIB_DEPENDS=		x11/gtk+

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

pre-build:
	@perl -pi -e "s:/usr/local:${PREFIX}:g" ${WRKSRC}/wmOptions.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmthemeinstall ${PREFIX}/bin

.include <bsd.port.mk>
