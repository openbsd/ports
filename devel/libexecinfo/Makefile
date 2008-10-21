# $OpenBSD: Makefile,v 1.1.1.1 2008/10/21 17:01:24 ajacoutot Exp $

COMMENT=	clone of backtrace facility found in the GNU libc

DISTNAME=	libexecinfo-1.1
CATEGORIES=	devel

SHARED_LIBS=	execinfo	0.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.freebsd.org/pub/FreeBSD/ports/local-distfiles/itetcu/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	m

MAKE_ENV=	LIBDIR=${PREFIX}/lib \
		LIBexecinfo_MAJOR=${LIBexecinfo_VERSION:R} \
		LIBexecinfo_MINOR=${LIBexecinfo_VERSION:E}

post-install:
	${INSTALL_DATA} ${WRKBUILD}/*.h ${PREFIX}/include

.include <bsd.port.mk>
