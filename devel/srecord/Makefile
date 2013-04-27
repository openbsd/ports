# $OpenBSD: Makefile,v 1.6 2013/04/27 15:22:00 jasper Exp $

BROKEN-sparc64= 	needs pthread for reasons yet unknown

COMMENT=		collection of tools for manipulating EPROM load files

DISTNAME=		srecord-1.61
CATEGORIES=		devel

SHARED_LIBS +=  srecord              0.0      # 0.0

HOMEPAGE=		http://srecord.sf.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=srecord/}

MODULES=		devel/gettext

WANTLIB += c gcrypt gpg-error m stdc++

BUILD_DEPENDS=		devel/boost \
			print/ghostscript/gnu
LIB_DEPENDS=		security/libgcrypt

USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


.include <bsd.port.mk>
