# $OpenBSD: Makefile,v 1.14 2002/05/13 23:31:26 espie Exp $

COMMENT=	"free Norton Commander Clone with many useful features"

DISTNAME=		mc-4.5.51
CATEGORIES=		misc
NEED_VERSION=		1.402
MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/mc/}

HOMEPAGE=		http://www.gnome.org/mc/

LIB_DEPENDS=		glib.1.2::devel/glib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

BROKEN=			"final auditing. comming soon"

.include <bsd.port.mk>
