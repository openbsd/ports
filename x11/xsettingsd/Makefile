# $OpenBSD: Makefile,v 1.10 2017/07/26 22:45:35 sthen Exp $

COMMENT=	lightweight XSETTINGS daemon

GH_ACCOUNT=	derat
GH_PROJECT=	xsettingsd
GH_COMMIT=	e98f8fde334843230ff6b96d7f237a7193d78143
DISTNAME=	xsettingsd-0.20170402
REVISION =	1


CATEGORIES=	x11

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xdmcp c m pthread-stubs ${COMPILER_LIBCXX} xcb

MODULES=	devel/scons

MAKE_ENV=	${MODSCONS_ENV} \
		CPPFLAGS="${CPPFLAGS}" LDFLAGS="${LDFLAGS}"

# there are gtest-based tests, but fiddly to get working with SCons
NO_TEST=	Yes

do-install:
	cd ${WRKSRC}; \
	    ${INSTALL_MAN} xsettingsd.1 ${PREFIX}/man/man1/; \
	    ${INSTALL_PROGRAM} xsettingsd dump_xsettings ${PREFIX}/bin

.include <bsd.port.mk>
