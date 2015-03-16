# $OpenBSD: Makefile,v 1.14 2015/03/16 18:07:42 naddy Exp $

COMMENT=	memory allocation debugger library

DISTNAME=	exude-0.7.3
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	devel
SHARED_LIBS=	exude	3.1
REVISION=	0

HOMEPAGE=	http://opensource.conformal.com/wiki/Exude
MASTER_SITES=	http://opensource.conformal.com/snapshots/exude/

MAINTAINER=	David Hill <dhill@mindcry.org>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/libclog

do-configure:
	printf "major=${LIBexude_VERSION:R}\nminor=${LIBexude_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>
