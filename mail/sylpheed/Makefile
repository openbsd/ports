# $OpenBSD: Makefile,v 1.86 2010/01/10 10:21:05 ajacoutot Exp $

COMMENT=	mail/news client in gtk+

MAJOR=		2.7
VERSION=	${MAJOR}.1
DISTNAME=	sylpheed-${VERSION}

SHARED_LIBS +=  sylph-0              0.0      # .0.1
SHARED_LIBS +=  sylpheed-plugin-0    0.0      # .0.1

CATEGORIES=	mail news x11
HOMEPAGE=	http://sylpheed.sraoss.jp/en

# GPLv2 - LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext
LIB_DEPENDS=	gtk-x11-2.0.>=0.9,gdk_pixbuf-2.0.>=0.9,gdk-x11-2.0.>=0.9::x11/gtk+2 \
		gtkspell.>=1::textproc/gtkspell

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo crypto enchant
WANTLIB += expat fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs ssl stdc++ xcb z

RUN_DEPENDS=	::devel/desktop-file-utils
MASTER_SITES=	http://sylpheed.sraoss.jp/sylpheed/v${MAJOR}/

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-ssl \
			--enable-ipv6 \
			--enable-gtkspell \
			--disable-jpilot \
			--disable-ldap \
			--disable-oniguruma
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
