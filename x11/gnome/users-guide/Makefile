# $OpenBSD: Makefile,v 1.15 2007/04/24 19:49:13 jasper Exp $

PKG_ARCH=		*

COMMENT=		"general GNOME User Documentation"

VERSION=		2.18.1
DISTNAME=		gnome-user-docs-${VERSION}
PKGNAME=		gnome2-user-docs-${VERSION}
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# GNU FDL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-user-docs/2.18/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
BUILD_DEPENDS=		${RUN_DEPENDS} \
			:gnome-doc-utils-*:x11/gnome/doc-utils

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS= 	--disable-scrollkeeper

.include <bsd.port.mk>
