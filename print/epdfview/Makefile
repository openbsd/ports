# $OpenBSD: Makefile,v 1.6 2007/12/07 20:10:33 kili Exp $

COMMENT=	lightweight PDF document viewer

DISTNAME=	epdfview-0.1.6
PKGNAME=	${DISTNAME}p2
CATEGORIES=	print
HOMEPAGE=	http://trac.emma-soft.com/epdfview/

MAINTAINER=	Vlad Glagolev <stealth@sourcemage.org>

MASTER_SITES=	${HOMEPAGE}chrome/site/releases/

EXTRACT_SUFX=	.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi Xinerama \
		Xrandr X11 Xext Xrender atk-1.0 c cairo fontconfig freetype \
                glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
                m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread \
                stdc++ z expat

MODULES=	devel/gettext

LIB_DEPENDS=	gtk-x11-2.0.>=0.14,gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14::x11/gtk+2 \
		poppler.>=3,poppler-glib.>=3::print/poppler

CONFIGURE_STYLE=gnu

USE_X11=	Yes
USE_GMAKE=	Yes

FLAVORS=	cups
FLAVOR?=

.if ${FLAVOR:L:Mcups}
WANTLIB+=		crypto ssl
LIB_DEPENDS+=           cups.>=3:cups->=1.2:print/cups
CONFIGURE_ARGS+=	--with-cups
.else
CONFIGURE_ARGS+=        --without-cups
.endif

.include <bsd.port.mk>
