# $OpenBSD: Makefile,v 1.1.1.1 2010/04/21 22:55:34 nicm Exp $

COMMENT =	libevent extra features

VERSION =	1.4.13
DISTNAME =	libevent-${VERSION}-stable
PKGNAME =	libeventextra-${VERSION}

MAJOR =          1
MINOR =          0
SHARED_LIBS =    eventextra ${MAJOR}.${MINOR}

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

pre-build:
	@printf "major=${MAJOR}\nminor=${MINOR}\n" >${WRKBUILD}/shlib_version
	@cp ${FILESDIR}/Makefile ${WRKBUILD}
	@rm -f ${WRKBUILD}/{event.h,evutil.h}

post-install:
	${INSTALL_DATA} ${WRKSRC}/{evhttp.h,evdns.h,evrpc.h} ${PREFIX}/include

.include <bsd.port.mk>
