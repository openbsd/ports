# $OpenBSD: Makefile,v 1.1.1.1 2003/05/19 00:58:49 wcobb Exp $

ONLY_FOR_ARCHS=	i386 macppc

COMMENT=	"Video capture daemon for bktr driver"

VERSION=	1.2
DISTNAME=	videod-${VERSION}
CATEGORIES=	graphics
HOMEPAGE=	http://videod.csoft.org/
MASTER_SITES=	http://stable.csoft.org/videod/

MAINTAINER=	Wilbern Cobb <wcobb@openbsd.org>

# BSD license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg

.include <bsd.port.mk>
