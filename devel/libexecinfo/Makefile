# $OpenBSD: Makefile,v 1.3 2009/04/09 15:03:06 ajacoutot Exp $

COMMENT=	clone of backtrace facility found in the GNU libc

DISTNAME=	libexecinfo-1.1
PKGNAME=	${DISTNAME}p1
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

MAKE_ENV=	LIBDIR=${PREFIX}/lib \
		LIBexecinfo_MAJOR=${LIBexecinfo_VERSION:R} \
		LIBexecinfo_MINOR=${LIBexecinfo_VERSION:E}

post-install:
	${INSTALL_DATA} ${WRKBUILD}/*.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libexecinfo
	${INSTALL_DATA} ${WRKBUILD}/README \
		${PREFIX}/share/doc/libexecinfo

.include <bsd.port.mk>
