# $OpenBSD: Makefile,v 1.23 2012/12/13 16:34:48 naddy Exp $

COMMENT=		neat theme manager for Window Maker

DISTNAME=		wmthemeinstall-0.62
CATEGORIES=		x11 x11/windowmaker

REVISION=		2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xi c glib gmodule gdk m z gtk

MODULES=		devel/gettext

RUN_DEPENDS=		x11/windowmaker
LIB_DEPENDS=		x11/gtk+

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

pre-build:
	@perl -pi -e "s:/usr/local:${PREFIX}:g" ${WRKSRC}/wmOptions.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmthemeinstall ${PREFIX}/bin

.include <bsd.port.mk>
