# $OpenBSD: Makefile,v 1.12 2012/10/15 14:55:43 sthen Exp $

COMMENT=		GTK+ Object Builder
DISTNAME=		gob2-2.0.18
REVISION=	1

CATEGORIES=		x11 devel

HOMEPAGE=		http://www.gnome.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m glib-2.0

LIB_DEPENDS=		devel/glib2

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gob2/2.0/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

.include <bsd.port.mk>
