# $OpenBSD: Makefile,v 1.13 2004/12/10 20:33:59 marcm Exp $

COMMENT=		"portable library for obtaining system information"

V=			2.8.1
DISTNAME=		libgtop-${V}
PKGNAME=		libgtop2-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtop/2.8/}
EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c kvm

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	glib-2.0.0.0::devel/glib2 \
		popt::devel/popt

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@chgrp kmem ${PREFIX}/bin/libgtop_server2
	@chmod 2555 ${PREFIX}/bin/libgtop_server2

.include <bsd.port.mk>
