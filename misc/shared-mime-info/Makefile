# $OpenBSD: Makefile,v 1.15 2007/04/22 20:41:13 jasper Exp $

COMMENT=		"shared mime database for desktops"

VERSION=		0.21
DISTNAME=		shared-mime-info-${VERSION}
CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z

MASTER_SITES=		http://freedesktop.org/~hadess/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		glib-2.0::devel/glib2 \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
