# $OpenBSD: Makefile,v 1.18 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=		library for manipulating ID3v1 and ID3v2 tags

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.3
REVISION=		3
CATEGORIES=     	audio
SHARED_LIBS +=	id3                  4.0      # .3.8

HOMEPAGE=		http://id3lib.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=id3lib/}

USE_GMAKE=		Yes
NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
