# $OpenBSD: Makefile,v 1.31 2010/10/19 08:13:59 espie Exp $

COMMENT=	open source client for Windows Terminal Server
DISTNAME=	rdesktop-1.6.0
REVISION=	2
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Chris Kuethe <ckuethe@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 c crypto pthread-stubs xcb ao

MODULES=	converters/libiconv

LIB_DEPENDS=	::audio/libao

NO_REGRESS=	Yes
USE_X11=	Yes
USE_GROFF =	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=libao

.include <bsd.port.mk>
