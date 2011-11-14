# $OpenBSD: Makefile,v 1.8 2011/11/14 19:14:18 sthen Exp $

COMMENT =	clone of backtrace facility found in the GNU libc

V =		0.2
DISTNAME =	backtrace-$V
PKGNAME =	libexecinfo-$V
EPOCH =		0
CATEGORIES =	devel

SHARED_LIBS =	execinfo	1.0

HOMEPAGE =	http://opensource.conformal.com/wiki/Backtrace
MASTER_SITES =	http://opensource.conformal.com/snapshots/backtrace/
EXTRACT_SUFX =	.tgz

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB=	c
CFLAGS+=	-Wl,--export-dynamic
LDFLAGS+=	-Wl,--export-dynamic

MAKE_FLAGS =	LIB=execinfo
FAKE_FLAGS =	PREFIX=${WRKINST}/${TRUEPREFIX} \
		MANDIR=${PREFIX}/man/man

do-configure:
	printf "major=${LIBexecinfo_VERSION:R}\nminor=${LIBexecinfo_VERSION:E}\n" \
	    > ${WRKSRC}/libbacktrace/shlib_version

post-install:
	mv ${PREFIX}/include/backtrace.h ${PREFIX}/include/execinfo.h
	${INSTALL_PROGRAM} ${WRKDIST}/examples/backtrace_test \
		${PREFIX}/bin/backtrace_test

.include <bsd.port.mk>
