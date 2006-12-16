# $OpenBSD: Makefile,v 1.14 2006/12/16 12:22:35 espie Exp $

COMMENT=		"themes collection for GNOME"

DISTNAME=		gnome-themes-2.10.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-themes/2.10/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS} \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:gtk-engines2->=2.6.0:x11/gtk-engines2

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
