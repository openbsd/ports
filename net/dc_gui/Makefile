# $OpenBSD: Makefile,v 1.3 2004/04/18 17:38:37 naddy Exp $

COMMENT=		"GUI for dctc (Direct Connect Text Clone)"

DISTNAME=		dc_gui-0.42
CATEGORIES=		net x11
HOMEPAGE=		http://ac2i.tzo.com/dctc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

LIB_DEPENDS=		gnome.36,art_lgpl.4,gnomesupport.,gnomeui.46,gnorba.28::x11/gnome/libs
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		:dctc-*:net/dctc

SEPARATE_BUILD=		simple
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
