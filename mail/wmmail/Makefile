# $OpenBSD: Makefile,v 1.10 2009/08/10 06:32:43 kili Exp $

COMMENT=		wm-dockapp; mail notifier

DISTNAME=		WMMail.app-0.64
PKGNAME=		wmmail-0.64p0
CATEGORIES=		mail x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm Xt c pthread-stubs xcb

RUN_DEPENDS=		:windowmaker-*:x11/windowmaker
LIB_DEPENDS=		PropList.>=2::devel/libproplist

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-PL-libs="-L${LOCALBASE}/lib" \
			--with-PL-incs="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/GNUstep/Apps/WMMail.app/
	${INSTALL_DATA} ${WRKSRC}/doc/Help.txt ${PREFIX}/GNUstep/Apps/WMMail.app/

.include <bsd.port.mk>
