# $OpenBSD: Makefile,v 1.40 2013/08/07 19:13:11 gsoares Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME=	rdesktop-1.7.1
REVISION=	2
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xrandr c crypto ao

MODULES=	converters/libiconv

LIB_DEPENDS=	audio/libao

NO_TEST=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao

.include <bsd.port.mk>
