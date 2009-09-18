# $OpenBSD: Makefile,v 1.32 2009/09/18 21:10:03 martynas Exp $

COMMENT=	fetch youtube and google videos

PKGNAME=	yt-13
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
