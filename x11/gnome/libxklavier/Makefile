# $OpenBSD: Makefile,v 1.7 2006/12/16 12:22:35 espie Exp $

COMMENT=		"utility library for XKB"

DISTNAME=		libxklavier-2.2
SHARED_LIBS +=  xklavier             11.0     # .10.0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/LibXklavier

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m xkbfile z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libxklavier/2.2/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv
LIB_DEPENDS=		xml2::textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
