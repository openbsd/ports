# $OpenBSD: Makefile,v 1.21 2017/04/07 20:59:49 sthen Exp $

COMMENT =	clone of backtrace facility found in the GNU libc

V =		0.3
GH_TAGNAME=	BACKTRACE_${V:S/./_/g}
GH_ACCOUNT=	conformal
GH_PROJECT=	backtrace
DISTNAME =	${GH_PROJECT}-${V}
PKGNAME =	libexecinfo-$V
EPOCH =		0
REVISION =	0
CATEGORIES =	devel

SHARED_LIBS =	execinfo	2.0

HOMEPAGE =	https://github.com/conformal/backtrace/wiki

# BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB=	c
LDFLAGS+=	-Wl,--export-dynamic

MAKE_FLAGS =	LIB=execinfo
FAKE_FLAGS =	PREFIX=${WRKINST}/${TRUEPREFIX} \
		MANDIR=${PREFIX}/man/man

.if ${MACHINE_ARCH:Mmips64*} || ${MACHINE_ARCH:Mhppa} || ${MACHINE_ARCH:Marm} || ${MACHINE_ARCH:Mvax} || ${MACHINE_ARCH:Msh}
CFLAGS+=	-D__BUILTIN_HACK
.endif

do-configure:
	printf "major=${LIBexecinfo_VERSION:R}\nminor=${LIBexecinfo_VERSION:E}\n" \
	    > ${WRKSRC}/libbacktrace/shlib_version

post-install:
	mv ${PREFIX}/include/backtrace.h ${PREFIX}/include/execinfo.h
	${INSTALL_PROGRAM} ${WRKDIST}/examples/backtrace_test \
		${PREFIX}/bin/backtrace_test

do-test:
	${SETENV} LD_LIBRARY_PATH=${WRKSRC}/libbacktrace \
		${WRKSRC}/examples/backtrace_test

.include <bsd.port.mk>
