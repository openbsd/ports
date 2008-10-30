# $OpenBSD: Makefile,v 1.81 2008/10/30 18:23:50 landry Exp $

COMMENT=	mail/news client in gtk+

MAJOR=		2.5
VERSION=	${MAJOR}.0
DISTNAME=	sylpheed-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail news x11
HOMEPAGE=	http://sylpheed.sraoss.jp/en

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	gtk-x11-2.0.>=0.9,gdk_pixbuf-2.0.>=0.9,gdk-x11-2.0.>=0.9::x11/gtk+2
WANTLIB=	X11 Xau Xcomposite Xdamage Xdmcp Xrender \
		Xcursor Xext Xfixes Xi Xinerama Xrandr \
		atk-1.0 c cairo crypto expat fontconfig \
		freetype glib-2.0 glitz gdk-x11-2.0 gdk_pixbuf-2.0 \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pcre \
		pthread pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png ssl z

RUN_DEPENDS=	::devel/desktop-file-utils
MASTER_SITES=	http://sylpheed.sraoss.jp/sylpheed/v${MAJOR}/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ssl --enable-ipv6 \
			--disable-gtkspell --disable-imlib
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FLAVORS=	compface gpgme
FLAVOR?=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_DISTFILES_CDROM=	No Fee
LIB_DEPENDS+=		compface.>=1::mail/faces
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS+=		gpgme.>=4::security/gpgme
CONFIGURE_ARGS+=	--enable-gpgme
WANTLIB+=		gpg-error
.else
CONFIGURE_ARGS+=	--disable-gpgme
.endif

.include <bsd.port.mk>
