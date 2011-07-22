# $OpenBSD: Makefile,v 1.5 2011/07/22 13:26:42 dcoppa Exp $

ONLY_FOR_ARCHS =amd64 i386

COMMENT =	vmware userland helper for X

V =		0.20110616
DISTNAME =	jcs-vmwh-8249e85
PKGNAME =	vmwh-${V}
CATEGORIES =	sysutils x11

HOMEPAGE =	https://github.com/jcs/vmwh/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://spacehopper.org/mirrors/

WANTLIB +=	c

RUN_DEPENDS =	x11/xclip

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_REGRESS =	Yes

.include <bsd.port.mk>
