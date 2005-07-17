# $OpenBSD: Makefile,v 1.3 2005/07/17 18:12:37 alek Exp $

COMMENT=		"PNG to ASCII compiler and decompiler"

DISTNAME=		sng-1.0.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		graphics
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sng/}

HOMEPAGE=		http://sng.sourceforge.net/
MAINTAINER=		Thorsten Glaser <tg@66h.42h.de>

# zlib license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m c z

LIB_DEPENDS=		png::graphics/png
USE_X11=		yes
USE_GMAKE=		yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-png-inc=${LOCALBASE}/include/libpng \
			--with-png-lib=${LOCALBASE}/lib

NO_REGRESS=		yes

.include <bsd.port.mk>
