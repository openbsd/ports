# $OpenBSD: Makefile,v 1.13 2014/11/08 23:19:34 benoit Exp $

COMMENT=	memory allocation debugger library

DISTNAME=	exude-0.7.3
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	devel
SHARED_LIBS=	exude	3.1

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
