# $OpenBSD: Makefile,v 1.44 2009/08/10 06:32:43 kili Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $
# $RuOBSD: Makefile,v 1.4 2002/05/18 04:21:36 form Exp $

COMMENT=		xforms-based mail application for Unix

V=			1.5.3
DISTNAME=       	xfmail-${V}
PKGNAME=		${DISTNAME}p3
SHARED_LIBS=		editor	1.0 \
			mail	1.0
MODGNU_SHARED_LIBS=	editor	'' \
			mail	''
CATEGORIES=     	mail x11
MASTER_SITES=		ftp://ftp.xfmail.org/pub/xfmail/release/${V}/source/

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.xfmail.org/

LIB_DEPENDS=		forms::x11/xforms \
			jpeg.>=62::graphics/jpeg \
			glib.>=1.2::devel/glib

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL ICE SM X11 Xau Xdmcp Xext Xpm c m pthread-stubs \
			stdc++ xcb

USE_X11=		Yes
USE_LIBTOOL=	Yes
USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.59
# doesn't work otherwise
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS}
CONFIGURE_STYLE=	automake
CONFIGURE_ARGS=		--without-nas-sound
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+=	--with-esd-sound
LIB_DEPENDS+=		esd.>=2::audio/esound
WANTLIB+=		audiofile sndio
.else
CONFIGURE_ARGS+=	--without-esd-sound
.endif

pre-configure:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh autogen.sh

.include <bsd.port.mk>
