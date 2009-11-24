# $OpenBSD: Makefile,v 1.14 2009/11/24 17:13:59 ajacoutot Exp $

COMMENT=	lightweight PDF document viewer

DISTNAME=	epdfview-0.1.7
PKGNAME=	${DISTNAME}p2
CATEGORIES=	print
HOMEPAGE=	http://trac.emma-soft.com/epdfview/

MAINTAINER=	Brynet <brynet@gmail.com>

MASTER_SITES=	${HOMEPAGE}chrome/site/releases/

EXTRACT_SUFX=	.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs stdc++ xcb z

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gtk-x11-2.0.>=0.14,gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14::x11/gtk+2 \
		poppler.>=3,poppler-glib.>=3::print/poppler

CONFIGURE_STYLE=gnu

USE_X11=	Yes
USE_GMAKE=	Yes

FLAVORS=	cups
FLAVOR?=

.if ${FLAVOR:L:Mcups}
WANTLIB += asn1 crypto gssapi krb5 ssl
LIB_DEPENDS+=	cups.>=3:cups->=1.2:print/cups
CONFIGURE_ARGS+=--with-cups
.else
CONFIGURE_ARGS+=--without-cups
.endif

ICONDIR = $(PREFIX)/share/icons/hicolor

post-install:
	${INSTALL_DATA_DIR} ${ICONDIR}/{24x24,32x32,48x48}/apps
	for i in 24 32 48; do \
		${INSTALL_DATA} ${WRKSRC}/data/icon_epdfview-$${i}.png \
		  ${ICONDIR}/$${i}x$${i}/apps/epdfview.png; \
	done

.include <bsd.port.mk>
