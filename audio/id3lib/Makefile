# $OpenBSD: Makefile,v 1.2 2002/05/13 13:28:07 lebel Exp $

COMMENT=		"library for manipulating ID3v1 and ID3v2 tags"

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.0pre2
CATEGORIES=     	audio
NEED_VERSION=		1.528

HOMEPAGE=		http://id3lib.sourceforge.net/

MAINTAINER=		David Lebel <lebel@openbsd.org>

PATCH_LIST=		${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-lt* \
	     		patch-*

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
