# $OpenBSD: Makefile,v 1.4 2009/10/09 15:10:13 jasper Exp $

COMMENT=	clone of backtrace facility found in the GNU libc

DISTNAME=	libexecinfo-1.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	devel

SHARED_LIBS=	execinfo	0.0

# <sobomax@FreeBSD.org>
HOMEPAGE=	http://www.freebsd.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_FREEBSD_LOCAL:=itetcu/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	m

# Hack that allows this lib to build on mips64, although
# it essentially turns this lib into an empty shell...
# ...too many ports require it to mark it NOT_FOR_ARCHS
.if ${MACHINE_ARCH} == "mips64"
EXTRA_CFLAGS=   -D__BUILTIN_HACK
# See bsd.lib.mk:162
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

MAKE_FLAGS+=    EXTRA_CFLAGS=${EXTRA_CFLAGS}

MAKE_ENV=	LIBDIR=${PREFIX}/lib \
		LIBexecinfo_MAJOR=${LIBexecinfo_VERSION:R} \
		LIBexecinfo_MINOR=${LIBexecinfo_VERSION:E}

post-install:
	${INSTALL_DATA} ${WRKBUILD}/*.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libexecinfo
	${INSTALL_DATA} ${WRKBUILD}/README \
		${PREFIX}/share/doc/libexecinfo

.include <bsd.port.mk>
