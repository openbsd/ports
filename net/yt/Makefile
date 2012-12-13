# $OpenBSD: Makefile,v 1.49 2012/12/13 02:48:15 jsg Exp $

PKG_ARCH =      *

COMMENT=	fetch YouTube and Google videos

PKGNAME=	yt-20
REVISION=	0
CATEGORIES=	net www
DISTFILES=

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/lua
NO_CHECKSUM=		Yes
NO_BUILD=		Yes
NO_REGRESS=		Yes
RUN_DEPENDS+=		devel/luastdlib \
			graphics/ffmpeg \
			net/luasocket
MODLUA_SA=		Yes

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/yt.lua ${PREFIX}/bin/yt
	@${SUBST_CMD} ${PREFIX}/bin/yt

.include <bsd.port.mk>
