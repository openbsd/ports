# $OpenBSD: Makefile,v 1.15 2010/09/05 22:00:13 sthen Exp $

COMMENT=		library for manipulating ID3v1 and ID3v2 tags

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.3
REVISION=		2
CATEGORIES=     	audio
SHARED_LIBS +=	id3                  4.0      # .3.8

HOMEPAGE=		http://id3lib.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=id3lib/}

USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
USE_LIBTOOL=		Yes

.include <bsd.port.mk>
