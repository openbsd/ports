# $OpenBSD: Makefile,v 1.37 2012/03/14 18:36:04 gsoares Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME=	rdesktop-1.7.1
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xrandr c crypto ao

MODULES=	converters/libiconv

LIB_DEPENDS=	audio/libao

NO_REGRESS=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao

.include <bsd.port.mk>
