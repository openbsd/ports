# $OpenBSD: Makefile,v 1.7 2012/04/28 09:27:29 ajacoutot Exp $

COMMENT=	memory allocation debugger library

DISTNAME=	exude-0.7.0
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	devel
SHARED_LIBS=	exude	3.1

HOMEPAGE=	http://opensource.conformal.com/wiki/Exude	
MASTER_SITES=	http://opensource.conformal.com/snapshots/exude/

MAINTAINER=	David Hill <dhill@mindcry.org>

NO_REGRESS=	Yes

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	devel/libclog

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

do-configure:
	printf "major=${LIBexude_VERSION:R}\nminor=${LIBexude_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>
