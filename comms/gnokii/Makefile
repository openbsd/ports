# $OpenBSD: Makefile,v 1.3 2006/06/13 13:19:08 bernd Exp $

COMMENT=	"tools to talk to GSM cellular phones"	

VERSION=	0.6.12
DISTNAME=	gnokii-${VERSION}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	comms x11
SHARED_LIBS=	gnokii	2.7

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.gnokii.org/
MASTER_SITES=	${HOMEPAGE}download/gnokii/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		c

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-security \
			--disable-debug \
			--disable-xdebug \
			--disable-rlpdebug

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
WANTLIB+=		X11 Xext Xpm Xrender fontconfig freetype z \
			iconv intl m pthread atk-1.0.800.0 glib-2.0.400.8 \
			gmodule-2.0.400.8 gobject-2.0.400.8 pango-1.0.600.0 \
			pangoft2-1.0.600.0 pangocairo-1.0.0.0 cairo glitz png
LIB_DEPENDS=		gtk-x11-2.0.400.13,gdk-x11-2.0.400.13,gdk_pixbuf-2.0.400.13::x11/gtk+2
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnokii
	${INSTALL_DATA} ${WRKSRC}/Docs/sample/gnokiirc \
		${PREFIX}/share/examples/gnokii
	${INSTALL_DATA} ${WRKSRC}/Docs/man/gnokii.1 \
		${PREFIX}/man/man1
.if !${FLAVOR:L:Mno_x11}
	${INSTALL_DATA} ${WRKSRC}/Docs/man/xgnokii.1x \
		${PREFIX}/man/man1/xgnokii.1
.endif

.include <bsd.port.mk>
