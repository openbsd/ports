# $OpenBSD: Makefile,v 1.5 2003/08/18 21:36:15 espie Exp $

COMMENT=		"high-performance CORBA Object Request Broker"

DISTNAME=		ORBit2-2.6.3
CATEGORIES=		devel

HOMEPAGE=		http://www.labs.redhat.com/orbit/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/ORBit2/2.6/}
EXTRACT_SUFX=		.tar.bz2

# fix for Alpha
.if (${MACHINE_ARCH} == "alpha")
PATCH_LIST=		patch-* sup-alpha-*
.endif

BUILD_DEPENDS=		:pkgconfig->=0.14.0:devel/pkgconfig
LIB_DEPENDS=		IDL-2::devel/libIDL \
			gmodule-2.0.0.0::devel/glib2 \
			linc.1::devel/linc \
			popt::devel/popt

SEPARATE_BUILD=		concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-indent
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
