# $OpenBSD: Makefile,v 1.7 2003/09/23 21:14:22 marcm Exp $

COMMENT=		"code editor for GNOME"

DISTNAME=		glimmer-1.2.1
PKGNAME=		glimmer-1.2.1p2
CATEGORIES=		editors x11

HOMEPAGE=		http://glimmer.sourceforge.net/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=glimmer/}

MODULES=		gettext

LIB_DEPENDS=		gnomeprint.16::x11/gnome/print \
			gnomevfs.0::x11/gnome/vfs

SEPARATE_BUILD=		concurrent
USE_X11=                Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
