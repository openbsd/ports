# $OpenBSD: Makefile,v 1.10 2019/07/12 20:49:54 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	vmware userland helper for X

V=		1.1
DISTNAME=	v${V}
PKGNAME=	vmwh-${V}
EPOCH=		0
CATEGORIES=	sysutils x11
REVISION=	0

HOMEPAGE=	https://github.com/jcs/vmwh/
MAINTAINER=	joshua stein <jcs@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}archive/
DIST_SUBDIR=	vmwh

WANTLIB+=	X11 Xmu c
RUN_DEPENDS=	x11/xclip

WRKDIST=	${WRKDIR}/${PKGNAME}
MAKE_FLAGS=	INCLUDES="-I${X11BASE}/include" \
		LDPATH="-L${X11BASE}/lib"
FAKE_FLAGS=	PREFIX="${PREFIX}" \
		INSTALL_PROGRAM="${INSTALL_PROGRAM}"

NO_TEST=	Yes

.include <bsd.port.mk>
