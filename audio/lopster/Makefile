# $OpenBSD: Makefile,v 1.19 2003/04/05 22:19:35 margarida Exp $

COMMENT=	"full featured GTK Napster client"
DISTNAME=	lopster-1.2.0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lopster/}

HOMEPAGE=	http://lopster.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gettext

LIB_DEPENDS=    gtk.1.2,gdk.1.2::x11/gtk+

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# XXX workaround gcc bugs on sparc64
.if ${MACHINE_ARCH:Msparc64}
PATCH_LIST=	gcc-* patch-*
.endif

FLAVORS=	no_ogg
FLAVOR?=

.if ${FLAVOR:L:Mno_ogg}
CONFIGURE_ARGS+=--without-ogg
.else
LIB_DEPENDS+=	ogg.4::audio/libogg
.endif

.include <bsd.port.mk>
