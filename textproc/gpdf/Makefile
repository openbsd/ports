# $OpenBSD: Makefile,v 1.2 2003/12/04 23:07:25 pvalchev Exp $

COMMENT=		"PDF viewer for GNOME"

DISTNAME=		gpdf-0.110
CATEGORIES=		textproc x11/gnome

HOMEPAGE=		http://www.inf.tu-dresden.de/~mk793652/gpdf/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gpdf/0.110/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig->=0.14.0:devel/pkgconfig
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
