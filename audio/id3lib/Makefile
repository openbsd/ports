# $OpenBSD: Makefile,v 1.7 2004/09/15 00:06:59 pvalchev Exp $

COMMENT=		"library for manipulating ID3v1 and ID3v2 tags"

VERSION=		3.8
DISTNAME=		id3lib-${VERSION}.3
CATEGORIES=     	audio

HOMEPAGE=		http://id3lib.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=id3lib/}

USE_GMAKE=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

.include <bsd.port.mk>
