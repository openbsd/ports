# $OpenBSD: Makefile,v 1.11 2002/07/26 02:52:11 pvalchev Exp $

COMMENT=	"gtk-based icq 2000 client"

DISTNAME=	ickle-0.3.2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ickle/}

HOMEPAGE=	http://ickle.sourceforge.net

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

LIB_DEPENDS=	gdkmm.2,gtkmm.2::x11/gtkmm \
		icq2000:libicq2000->=0.3.1:devel/libicq2000

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-gnome=no

.include <bsd.port.mk>
