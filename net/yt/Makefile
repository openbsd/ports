# $OpenBSD: Makefile,v 1.27 2009/06/13 01:51:08 martynas Exp $

COMMENT=	customizable script to fetch youtube videos

PKGNAME=	yt-10
CATEGORIES=	net www
DISTFILES=

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
