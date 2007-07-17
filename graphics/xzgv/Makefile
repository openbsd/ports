# $OpenBSD: Makefile,v 1.5 2007/07/17 12:45:49 ajacoutot Exp $

COMMENT=	picture viewer for X, with thumbnail-based file selector
DISTNAME=	xzgv-0.8
PKGNAME=	${DISTNAME}p1
CATEGORIES=	graphics

HOMEPAGE=	http://rus.members.beeb.net/xzgv.html

MAINTAINER=	Julian Leyh <julian@vgai.de>

PATCHFILES=	xzgv-0.8-integer-overflow-fix.diff:0
PATCH_DIST_STRIP=	-p1

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/apps/graphics/viewers/X/
MASTER_SITES0=	http://rus.members.beeb.net/

MODULES=	devel/gettext

LIB_DEPENDS=	gdk_imlib.>=19::graphics/imlib

WANTLIB=	X11 Xext Xi c gdk glib gmodule gtk jpeg m png tiff \
		ungif z

USE_X11=	Yes
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g;' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},g' \
		${WRKSRC}/doc/xzgv.1 ${WRKSRC}/doc/xzgv.texi

.include <bsd.port.mk>
