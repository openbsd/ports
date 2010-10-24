# $OpenBSD: Makefile,v 1.18 2010/10/24 21:15:35 ajacoutot Exp $
# $FreeBSD: ports/x11-wm/wmthemeinstall/Makefile,v 1.5 2000/10/05 06:42:57 reg Exp $

COMMENT=		neat theme manager for Window Maker

DISTNAME=		wmthemeinstall-0.62
CATEGORIES=		x11 x11/windowmaker

REVISION=		0

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xi c glib gmodule gdk m z gtk

MODULES=		devel/gettext

RUN_DEPENDS=		::x11/windowmaker
LIB_DEPENDS=		::x11/gtk+

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

pre-build:
	@perl -pi -e "s:/usr/local:${PREFIX}:g" ${WRKSRC}/wmOptions.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmthemeinstall ${PREFIX}/bin

.include <bsd.port.mk>
