# $OpenBSD: Makefile,v 1.8 2002/04/21 03:21:43 pvalchev Exp $

COMMENT=	"gtk-based icq 2000 client"

DISTNAME=	ickle-0.3.0
CATEGORIES=	net
NEED_VERSION=	1.524
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	ickle

HOMEPAGE=	http://ickle.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

LIB_DEPENDS=	gdkmm.2,gtkmm.2::x11/gtkmm \
		icq2000::devel/libicq2000

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gnome=no

.include <bsd.port.mk>
