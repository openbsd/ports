# $OpenBSD: Makefile,v 1.16 2007/04/22 21:01:20 jasper Exp $

COMMENT=		"shared mime database for desktops"

DISTNAME=		shared-mime-info-0.21
PKGNAME=		${DISTNAME}p0
CATEGORIES=		misc

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/shared-mime-info

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
