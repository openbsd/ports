# $OpenBSD: Makefile,v 1.6 2017/04/10 11:46:37 sthen Exp $

COMMENT=	lightweight XSETTINGS daemon

DISTNAME=	derat-xsettingsd-486be8b
PKGNAME=	xsettingsd-0.20120312
REVISION=	1

CATEGORIES=	x11

HOMEPAGE=	https://github.com/derat/xsettingsd

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp c m pthread-stubs ${LIBCXX} xcb

MASTER_SITES=	https://spacehopper.org/mirrors/

MODULES=	devel/scons

MAKE_ENV=	${MODSCONS_ENV} CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

# there are gtest-based tests, but fiddly to get working with SCons
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; \
	    ${INSTALL_MAN} xsettingsd.1 ${PREFIX}/man/man1/; \
	    ${INSTALL_PROGRAM} xsettingsd dump_xsettings ${PREFIX}/bin

.include <bsd.port.mk>
