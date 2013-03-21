# $OpenBSD: Makefile,v 1.4 2013/03/21 08:45:16 ajacoutot Exp $

BROKEN-sparc64= 	needs pthread for reasons yet unknown

COMMENT=		collection of tools for manipulating EPROM load files

DISTNAME=		srecord-1.57
CATEGORIES=		devel

SHARED_LIBS +=  srecord              0.0      # 0.0

HOMEPAGE=		http://srecord.sf.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=srecord/}

MODULES=		devel/gettext

WANTLIB += c gcrypt gpg-error m stdc++

BUILD_DEPENDS=		devel/boost
LIB_DEPENDS=		security/libgcrypt

USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


.include <bsd.port.mk>
