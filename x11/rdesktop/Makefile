# $OpenBSD: Makefile,v 1.29 2010/07/30 06:59:00 ajacoutot Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME=	rdesktop-1.6.0
REVISION=	1
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c crypto pthread-stubs xcb

MODULES=	converters/libiconv

LIB_DEPENDS=	ao::audio/libao

NO_REGRESS=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao

.include <bsd.port.mk>
