# $OpenBSD: Makefile,v 1.2 2003/03/29 14:35:40 couderc Exp $

COMMENT=		"Shared mime database for desktops"

VERSION=		0.10
DISTNAME=		shared-mime-info-${VERSION}
CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/standards/shared-mime-info.html

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.freedesktop.org/standards/shared-mime-info/

LIB_DEPENDS=		glib-2.0.=0,gmodule-2.0.=0,gobject-2.0.=0::devel/glib2 \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
