# $OpenBSD: Makefile,v 1.6 2011/11/09 12:18:19 dcoppa Exp $

ONLY_FOR_ARCHS =amd64 i386

COMMENT =	vmware userland helper for X

DISTNAME =	vmwh-0.20110905

CATEGORIES =	sysutils x11

HOMEPAGE =	https://github.com/jcs/vmwh/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://spacehopper.org/mirrors/

WANTLIB +=	X11 Xmu c

RUN_DEPENDS =	x11/xclip

MAKE_FLAGS =	INCLUDES="-I${X11BASE}/include" \
		LDPATH="-L${X11BASE}/lib"
FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_REGRESS =	Yes

.include <bsd.port.mk>
