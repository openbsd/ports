# $OpenBSD: Makefile,v 1.30 2009/08/24 19:31:27 jsg Exp $

COMMENT=	fetch youtube and google videos

PKGNAME=	yt-11p0
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
RUN_DEPENDS+=		::devel/luastdlib \
			::graphics/ffmpeg \
			::net/luasocket

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/yt.lua ${PREFIX}/bin/yt
	@${SUBST_CMD} ${PREFIX}/bin/yt

.include <bsd.port.mk>
