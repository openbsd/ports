# $OpenBSD: Makefile,v 1.5 2002/09/22 15:37:35 marcm Exp $

COMMENT=		"architecture for creating reusable software components"
COMMENT-docs=		"documentation for the bonobo architecture"

VERSION=		1.0.20
DISTNAME=		bonobo-${VERSION}
PKGNAME-docs=		bonobo-docs-${VERSION}
CATEGORIES=    		x11/gnome
HOMEPAGE=		http://developer.gnome.org/arch/component/bonobo.html

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL/LGPL
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/bonobo/1.0/}
EXTRACT_SUFX=		.tar.bz2

MULTI_PACKAGES=		-docs
SUBPACKAGE?=		

.if ${SUBPACKAGE} != "-docs"
MODULES=		gettext
LIB_DEPENDS=		art_lgpl.4,gnome.36,gnomesupport,gnomeui.46::x11/gnome/libs \
			oaf::x11/gnome/oaf \
			gnomeprint.16::x11/gnome/print
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
