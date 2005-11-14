# $OpenBSD: Makefile,v 1.59 2005/11/14 18:27:22 bernd Exp $

COMMENT=	"mail/news client in gtk+"

VERSION=	2.0.4
DISTNAME=	sylpheed-${VERSION}
CATEGORIES=    	mail news x11
HOMEPAGE=	http://sylpheed.good-day.net

MAINTAINER=	Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	gtk-x11-2.0.0.9,gdk_pixbuf-2.0.0.9,gdk-x11-2.0.0.9::x11/gtk+2
WANTLIB=	X11 Xrender Xext atk-1.0.0.0 c z \
		crypto fontconfig freetype glib-2.0.0.0 gdk-x11-2.0.0.0 \
		gdk_pixbuf-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		gtk-x11-2.0.0.0 m pthread pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangocairo-1.0.0.0 cairo glitz png ssl


MASTER_SITES=	${HOMEPAGE}/sylpheed/v2.0/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=sylpheed-claws/}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-ssl --enable-ipv6 \
			--disable-imlib
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"

FLAVORS=	compface gpgme
FLAVOR?=

.if ${FLAVOR:L:Mcompface}
PERMIT_PACKAGE_CDROM=	"No Fee"
PERMIT_DISTFILES_CDROM=	"No Fee"
LIB_DEPENDS+=		compface.1::mail/faces
.else
CONFIGURE_ARGS+=	--disable-compface
.endif

.if ${FLAVOR:L:Mgpgme}
LIB_DEPENDS+=		gpgme.4::security/gpgme
CONFIGURE_ARGS+=	--enable-gpgme
WANTLIB+=		gpg-error
.else
CONFIGURE_ARGS+=	--disable-gpgme
.endif

.include <bsd.port.mk>

