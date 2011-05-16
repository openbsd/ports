# $OpenBSD: Makefile,v 1.1.1.1 2011/05/16 20:21:14 dhill Exp $

COMMENT=	memory allocation debugger library

DISTNAME=	exude-0.1	
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	devel
SHARED_LIBS=	exude	0.0
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://opensource.conformal.com/wiki/Exude	
MASTER_SITES=	http://opensource.conformal.com/snapshots/exude/

MAINTAINER=	David Hill <dhill@openbsd.org>

NO_REGRESS=	Yes

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	devel/libclog

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=      -Dno_mips64=0
.else
PKG_ARGS+=      -Dno_mips64=1
.endif

do-configure:
	printf "major=${LIBexude_VERSION:R}\nminor=${LIBexude_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>
