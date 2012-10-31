# $OpenBSD: Makefile,v 1.48 2012/10/31 17:19:39 gsoares Exp $

PKG_ARCH =      *

COMMENT=	fetch YouTube and Google videos

PKGNAME=	yt-20
CATEGORIES=	net www
DISTFILES=

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

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
