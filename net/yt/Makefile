# $OpenBSD: Makefile,v 1.22 2009/01/05 18:44:37 martynas Exp $

COMMENT=	customizable script to fetch youtube videos

PKGNAME=	yt-9p1
CATEGORIES=	net
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
RUN_DEPENDS+=		::graphics/ffmpeg \
			::net/luasocket

do-install:
	${INSTALL_SCRIPT} ${FILESDIR}/yt.lua ${PREFIX}/bin/yt
	@perl -pi -e "s,%%LOCALBASE%%,${LOCALBASE}," ${PREFIX}/bin/yt 

.include <bsd.port.mk>
