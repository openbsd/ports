# $OpenBSD: Makefile,v 1.3 2010/11/20 17:22:42 espie Exp $

ONLY_FOR_ARCHS =amd64 i386

COMMENT =	vmware userland helper for X

V =		0.20101029
DISTNAME =	jcs-vmwh-ebb7669
PKGNAME =	vmwh-${V}
REVISION =	0
CATEGORIES =	sysutils x11

HOMEPAGE =	https://github.com/jcs/vmwh/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://distfiles.nl/

WANTLIB +=	c

RUN_DEPENDS =	x11/xclip

FAKE_FLAGS =	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_REGRESS =	Yes

.include <bsd.port.mk>
