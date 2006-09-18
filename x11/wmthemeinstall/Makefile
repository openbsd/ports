# $OpenBSD: Makefile,v 1.15 2006/09/18 10:21:49 espie Exp $
# $FreeBSD: ports/x11-wm/wmthemeinstall/Makefile,v 1.5 2000/10/05 06:42:57 reg Exp $

COMMENT=		'neat theme manager for Window Maker'

DISTNAME=		wmthemeinstall-0.62
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m z

RUN_DEPENDS=		:windowmaker-*:x11/windowmaker
LIB_DEPENDS=		gtk.>=1,gdk.>=1::x11/gtk+

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

pre-build:
	@perl -pi -e "s:/usr/local:${PREFIX}:g" ${WRKSRC}/wmOptions.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmthemeinstall ${PREFIX}/bin

.include <bsd.port.mk>
