# $OpenBSD: Makefile,v 1.4 2003/07/22 10:09:44 couderc Exp $

COMMENT=		"Shared mime database for desktops"

VERSION=		0.11
DISTNAME=		shared-mime-info-${VERSION}
CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/software/shared-mime-info/

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}releases/

LIB_DEPENDS=		glib-2.0.=0,gmodule-2.0.=0,gobject-2.0.=0::devel/glib2 \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
