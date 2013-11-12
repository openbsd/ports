# $OpenBSD: Makefile,v 1.1.1.1 2013/11/12 20:00:50 sthen Exp $

SHARED_LIBS +=	lz4                       0.0 # 0.0

COMMENT=	fast BSD-licensed data compression

DISTNAME=	lz4-0.0.20131102

CATEGORIES=	archivers

HOMEPAGE=	http://fastcompression.blogspot.com/p/lz4.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# library: BSD, tools: GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MASTER_SITES=	http://spacehopper.org/mirrors/

MODULES=	devel/cmake
WRKSRC=		${WRKDIST}/cmake
CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS=true

NO_TEST=	Yes

# the build is a little messy; there's also a GNU Makefile, which builds
# an additional version of the tool (just with a macro defined to disable some
# old options), and some additional test tools (benchmark and fuzzer), but only
# the CMake build includes the library.

# cmakefiles install as lz4c64/lz4c32 for 64/32-bit; rename for sane packaging
post-install:
	mv ${PREFIX}/bin/lz4c* ${PREFIX}/bin/lz4c
	${INSTALL_MAN} ${WRKDIST}/lz4.1 ${PREFIX}/man/man1/lz4c.1

.include <bsd.port.mk>
