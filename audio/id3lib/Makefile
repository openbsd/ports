# $OpenBSD: Makefile,v 1.3 2002/09/16 21:03:11 lebel Exp $

COMMENT=		"library for manipulating ID3v1 and ID3v2 tags"

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.0
CATEGORIES=     	audio

HOMEPAGE=		http://id3lib.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=id3lib/}

USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

post-install:
	@rm ${PREFIX}/lib/libid3.so.${VERSION}
	@mv ${PREFIX}/lib/libid3-${VERSION}.so.${VERSION} \
		 ${PREFIX}/lib/libid3.so.${VERSION}

.include <bsd.port.mk>
