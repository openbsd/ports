# $OpenBSD: Makefile,v 1.27 2018/10/28 07:59:57 bentley Exp $

COMMENT=		library for manipulating ID3v1 and ID3v2 tags

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.3
REVISION =		8
CATEGORIES=     	audio
SHARED_LIBS +=	id3                  4.0      # .3.8

HOMEPAGE=		http://id3lib.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=id3lib/}

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

# not actually used, but the autoconf script doesn't allow building without it
CONFIGURE_ENV=		ac_cv_header_iomanip_h=yes

.include <bsd.port.mk>
