# $OpenBSD: Makefile,v 1.13 2017/11/21 00:13:00 naddy Exp $

COMMENT=		collection of tools for manipulating EPROM load files

DISTNAME=		srecord-1.64
REVISION =		2
CATEGORIES=		devel

SHARED_LIBS +=  srecord              0.0      # 0.0

HOMEPAGE=		http://srecord.sf.net/

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=srecord/}

WANTLIB += c gcrypt gpg-error iconv intl m ${COMPILER_LIBCXX}

BUILD_DEPENDS=		devel/boost \
			print/ghostscript/gnu
LIB_DEPENDS=		security/libgcrypt

USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


.include <bsd.port.mk>
