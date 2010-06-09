# $OpenBSD: Makefile,v 1.3 2010/06/09 08:52:14 jasper Exp $

COMMENT =	libevent extra features

VERSION =	1.4.13
DISTNAME =	libevent-${VERSION}-stable
PKGNAME =	libeventextra-${VERSION}p0

SHARED_LIBS =    eventextra 1.0

CATEGORIES =	devel

HOMEPAGE =	http://www.monkey.org/~provos/

MAINTAINER =	Nicholas Marriott <nicm@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

MAKE_ENV +=	CC="${CC}"

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mmips64*}
PKG_ARGS+=	-Dno_mips64=0
.else
PKG_ARGS+=	-Dno_mips64=1
.endif

pre-build:
	@printf "major=${LIBeventextra_VERSION:R}\nminor=${LIBeventextra_VERSION:E}\n" >${WRKBUILD}/shlib_version
	@cp ${FILESDIR}/Makefile ${WRKBUILD}
	@rm -f ${WRKBUILD}/{event.h,evutil.h}

post-install:
	${INSTALL_DATA} ${WRKSRC}/{evhttp.h,evdns.h,evrpc.h} ${PREFIX}/include

.include <bsd.port.mk>
