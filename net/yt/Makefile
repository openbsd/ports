# $OpenBSD: Makefile,v 1.34 2010/06/07 22:43:26 jsg Exp $

COMMENT=	fetch youtube and google videos

PKGNAME=	yt-14p0
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
