# $OpenBSD: Makefile,v 1.5 2001/12/23 20:49:53 pvalchev Exp $

COMMENT=	"gtk-based icq 2000 client"

DISTNAME=	ickle-0.2.0
CATEGORIES=	net
NEED_VERSION=	1.502
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ickle

HOMEPAGE=	http://ickle.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

LIB_DEPENDS=	gdkmm.2,gtkmm.2::x11/gtkmm

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=	LDFLAGS="-L${WRKBUILD}/src/.libs -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-gnome=no

.include <bsd.port.mk>
