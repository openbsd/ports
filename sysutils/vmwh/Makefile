# $OpenBSD: Makefile,v 1.7 2013/03/11 11:41:33 espie Exp $

ONLY_FOR_ARCHS =amd64 i386

COMMENT =	vmware userland helper for X

DISTNAME =	vmwh-0.20110905

CATEGORIES =	sysutils x11

HOMEPAGE =	https://github.com/jcs/vmwh/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://spacehopper.org/mirrors/

WANTLIB +=	X11 Xmu c

RUN_DEPENDS =	x11/xclip

MAKE_FLAGS =	INCLUDES="-I${X11BASE}/include" \
		LDPATH="-L${X11BASE}/lib"
FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_TEST =	Yes

.include <bsd.port.mk>
