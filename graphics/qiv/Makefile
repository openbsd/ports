# $OpenBSD: Makefile,v 1.13 2009/08/10 06:31:45 kili Exp $

COMMENT=		very small and pretty fast gdk/Imlib image viewer

DISTNAME=		qiv-2.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		graphics

EXTRACT_SUFX=		-src.tgz

HOMEPAGE=		http://www.klografx.net/qiv/

MASTER_SITES=		http://www.klografx.net/qiv/download/

LIB_DEPENDS=		gdk_imlib.>=19::graphics/imlib

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c gdk glib gmodule gtk iconv intl \
			jpeg m png pthread-stubs tiff ungif xcb z

USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
