# $OpenBSD: Makefile,v 1.25 2017/07/26 22:45:15 sthen Exp $

COMMENT=		library for manipulating ID3v1 and ID3v2 tags

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.3
REVISION =		6
CATEGORIES=     	audio
SHARED_LIBS +=	id3                  4.0      # .3.8

HOMEPAGE=		http://id3lib.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX} z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=id3lib/}

USE_GMAKE=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu

# not actually used, but the autoconf script doesn't allow building without it
CONFIGURE_ENV=		ac_cv_header_iomanip_h=yes

.include <bsd.port.mk>
