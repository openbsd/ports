# $OpenBSD: Makefile,v 1.17 2013/03/11 11:23:54 espie Exp $

COMMENT=		wm-dockapp; mail notifier

DISTNAME=		WMMail.app-0.64
PKGNAME=		wmmail-0.64
REVISION=		2
CATEGORIES=		mail x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm Xt c pthread-stubs xcb PropList>=2

RUN_DEPENDS=		x11/windowmaker
LIB_DEPENDS=		devel/libproplist

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-PL-libs="-L${LOCALBASE}/lib" \
			--with-PL-incs="-I${LOCALBASE}/include"

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/GNUstep/Apps/WMMail.app/
	${INSTALL_DATA} ${WRKSRC}/doc/Help.txt ${PREFIX}/GNUstep/Apps/WMMail.app/

.include <bsd.port.mk>
