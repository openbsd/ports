# $OpenBSD: Makefile,v 1.1.1.1 2003/08/12 06:29:36 jolan Exp $

# XXX gcc3 issue
NOT_FOR_ARCHS=	sparc64

COMMENT=	"gtk2 spelling checker"
DISTNAME=	gtkspell-2.0.4
CATEGORIES=	textproc x11
MASTER_SITES=	${HOMEPAGE}download/

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_X11=	Yes

MODULES=	gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	aspell.15::textproc/aspell \
		gdk_pixbuf-2.0.0.0,gdk-x11-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--disable-gtk-doc

.include <bsd.port.mk>
