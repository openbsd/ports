# $OpenBSD: Makefile,v 1.30 2003/02/15 14:30:00 espie Exp $
# $NetBSD: Makefile,v 1.2 1998/07/04 09:19:04 mycroft Exp $
# $RuOBSD: Makefile,v 1.4 2002/05/18 04:21:36 form Exp $

COMMENT=		"xforms-based mail application for Unix"

DISTNAME=       	xfmail-1.5.2
CATEGORIES=     	mail x11
MASTER_SITES=		ftp://ftp.xfmail.org/pub/xfmail/release/1.5.2/source/

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://www.xfmail.org/

AUTOCONF_VERSION=	2.13
BUILD_DEPENDS=		::devel/autoconf/${AUTOCONF_VERSION} \
			::devel/metaauto \
			::devel/automake

LIB_DEPENDS=		forms::x11/xforms \
			jpeg.62::graphics/jpeg \
			glib.1.2::devel/glib

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_LIBTOOL=	Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-nas-sound
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+=	--with-esd-sound
LIB_DEPENDS+=		esd.2::audio/esound
.else
CONFIGURE_ARGS+=	--without-esd-sound
.endif

pre-configure:
	@cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} sh autogen.sh

.include <bsd.port.mk>
