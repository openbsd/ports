# $OpenBSD: Makefile,v 1.24 2007/02/03 11:42:18 sturm Exp $

COMMENT=		"portable library for obtaining system information"

V=			2.14.6
DISTNAME=		libgtop-${V}
PKGNAME=		libgtop2-${V}
SHARED_LIBS=		gtop-2.0	6.0	# .7.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgtop/2.14/}
EXTRACT_SUFX=		.tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Xau c kvm

MODULES=		devel/gettext
BUILD_DEPENDS=		::textproc/p5-XML-Parser
LIB_DEPENDS=		glib-2.0::devel/glib2 \
			popt::devel/popt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"

post-install:
	@chgrp kmem ${PREFIX}/bin/libgtop_server2
	@chmod 2555 ${PREFIX}/bin/libgtop_server2

.include <bsd.port.mk>
