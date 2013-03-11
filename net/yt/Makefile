# $OpenBSD: Makefile,v 1.50 2013/03/11 11:35:58 espie Exp $

PKG_ARCH =      *

COMMENT=	fetch YouTube and Google videos

PKGNAME=	yt-20
REVISION=	0
CATEGORIES=	net www
DISTFILES=

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/lua
NO_CHECKSUM=		Yes
NO_BUILD=		Yes
NO_TEST=		Yes
RUN_DEPENDS+=		devel/luastdlib \
			graphics/ffmpeg \
			net/luasocket
MODLUA_SA=		Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/yt.lua ${PREFIX}/bin/yt
	@${SUBST_CMD} ${PREFIX}/bin/yt

.include <bsd.port.mk>
