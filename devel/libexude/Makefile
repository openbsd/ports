# $OpenBSD: Makefile,v 1.4 2011/11/14 17:05:47 dhill Exp $

COMMENT=	memory allocation debugger library

DISTNAME=	exude-0.5.0
PKGNAME=	lib${DISTNAME}
CATEGORIES=    	devel
SHARED_LIBS=	exude	2.1

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

FAKE_FLAGS=	MANDIR=${PREFIX}/man/man

do-configure:
	printf "major=${LIBexude_VERSION:R}\nminor=${LIBexude_VERSION:E}\n" \
            > ${WRKSRC}/shlib_version

.include <bsd.port.mk>
