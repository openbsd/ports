# $OpenBSD: Makefile,v 1.1.1.1 2002/12/23 07:23:48 pvalchev Exp $

COMMENT=	"Settlers of Catan for GNOME/Gtk"

VERSION=	0.6.1
DISTNAME=	gnocatan-${VERSION}
CATEGORIES=	games x11/gnome

HOMEPAGE=	http://gnocatan.sourceforge.net/
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gnocatan/}

LIB_DEPENDS=	art_lgpl.4,gnome.36,gnomeui.46,gnomesupport.0::x11/gnome/libs

USE_GMAKE=	Yes
USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

.include <bsd.port.mk>
