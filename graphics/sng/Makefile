# $OpenBSD: Makefile,v 1.10 2010/11/18 15:47:48 jasper Exp $

COMMENT=		PNG to ASCII compiler and decompiler

DISTNAME=		sng-1.0.2
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sng/}

HOMEPAGE=		http://sng.sourceforge.net/

# zlib license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m c z png

LIB_DEPENDS=		graphics/png
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-png-inc=${LOCALBASE}/include/libpng \
			--with-png-lib=${LOCALBASE}/lib \
			--with-rgbtxt=${X11BASE}/share/X11/rgb.txt

NO_REGRESS=		yes

.include <bsd.port.mk>
