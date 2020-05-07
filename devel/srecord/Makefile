# $OpenBSD: Makefile,v 1.16 2020/05/07 14:24:53 sthen Exp $

BROKEN-arm=	SIGBUS in ps2pdf

COMMENT=		collection of tools for manipulating EPROM load files

DISTNAME=		srecord-1.64
REVISION =		3
CATEGORIES=		devel

SHARED_LIBS +=  srecord              0.0      # 0.0

HOMEPAGE=		http://srecord.sf.net/

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=srecord/}

WANTLIB += c gcrypt gpg-error iconv intl m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		devel/boost \
			print/ghostscript/gnu
LIB_DEPENDS=		security/libgcrypt

USE_GROFF=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"


.include <bsd.port.mk>
