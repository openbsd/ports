# $OpenBSD: Makefile,v 1.2 2013/03/11 11:46:19 espie Exp $

COMMENT=	lightweight XSETTINGS daemon

DISTNAME=	derat-xsettingsd-486be8b
PKGNAME=	xsettingsd-0.20120312

CATEGORIES=	x11

HOMEPAGE=	http://code.google.com/p/xsettingsd/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp c m pthread-stubs stdc++ xcb

MASTER_SITES=	http://spacehopper.org/mirrors/

MODULES=	devel/scons

MAKE_ENV=	${MODSCONS_ENV} CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

# there are gtest-based tests, but fiddly to get working with SCons
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; \
	    ${INSTALL_MAN} xsettingsd.1 ${PREFIX}/man/man1/; \
	    ${INSTALL_PROGRAM} xsettingsd dump_xsettings ${PREFIX}/bin

.include <bsd.port.mk>
