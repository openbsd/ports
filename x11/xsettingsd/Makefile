# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:30 sthen Exp $

COMMENT=	lightweight XSETTINGS daemon

GH_ACCOUNT=	derat
GH_PROJECT=	xsettingsd
GH_TAGNAME=	v1.0.0
REVISION=	0

CATEGORIES=	x11

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xau Xdmcp c m ${COMPILER_LIBCXX} xcb

COMPILER =		base-clang ports-gcc base-gcc

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
