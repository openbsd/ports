# $OpenBSD: Makefile,v 1.1.1.1 2002/07/25 09:14:13 nino Exp $

COMMENT=		"general-purpose utility library"
COMMENT-docs=           "glib2 documentation"

VERSION=		2.0.4
DISTNAME=		glib-${VERSION}
PKGNAME=		glib2-${VERSION}
PKGNAME-docs=           glib2-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Nils Nordman <nino@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.0/
EXTRACT_SUFX=           .tar.bz2

MULTI_PACKAGES=         -docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
MODULES=		iconv gettext
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=		${BUILD_DEPENDS}
.endif

USE_GMAKE=		Yes
SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

.include <bsd.port.mk>
