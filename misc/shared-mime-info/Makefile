# $OpenBSD: Makefile,v 1.12 2006/07/19 15:11:53 steven Exp $

COMMENT=		"Shared mime database for desktops"

VERSION=		0.15
DISTNAME=		shared-mime-info-${VERSION}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv intl m z

MASTER_SITES=		http://www.freedesktop.org/software/shared-mime-info/

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		glib-2.0.0.0::devel/glib2 \
			xml2::textproc/libxml

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
