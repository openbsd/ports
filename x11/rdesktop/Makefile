# $OpenBSD: Makefile,v 1.35 2011/06/23 15:17:13 sebastia Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME=	rdesktop-1.7.0
REVISION =	0
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c crypto pthread-stubs xcb ao
WANTLIB+= 		Xau Xdmcp Xext Xrandr Xrender

MODULES=	converters/libiconv

LIB_DEPENDS=	audio/libao

NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao

.include <bsd.port.mk>
