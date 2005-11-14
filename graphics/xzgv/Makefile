# $OpenBSD: Makefile,v 1.2 2005/11/14 17:09:22 pvalchev Exp $

COMMENT=	"picture viewer for X, with thumbnail-based file selector"
DISTNAME=	xzgv-0.8
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://rus.members.beeb.net/xzgv.html

MAINTAINER=	Julian Leyh <oenone@oenone.de>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/apps/graphics/viewers/X/

MODULES=	devel/gettext

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.2::graphics/png \
		ungif.5::graphics/libungif \
		gdk_imlib.19::graphics/imlib

WANTLIB=	Xi Xext X11 m c z glib gmodule

NO_REGRESS=	Yes

.include <bsd.port.mk>
