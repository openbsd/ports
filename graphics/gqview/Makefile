# $OpenBSD: Makefile,v 1.18 2001/12/22 09:08:04 obecian Exp $
# $FreeBSD: Makefile,v 1.15 1999/08/25 06:14:08 obrien Exp $

COMMENT=	"gtk-based graphic file viewer"

DISTNAME=	gqview-1.0
CATEGORIES=	graphics
NEED_VERSION=	1.499
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR= gqview

HOMEPAGE=	http://gqview.sourceforge.net

LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf

MAINTAINER=	Joshua Stein <jcs@rt.fm>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
