# $OpenBSD: Makefile,v 1.18 2005/03/24 20:51:56 jcs Exp $

COMMENT=	"open source client for Windows Terminal Server"
DISTNAME=	rdesktop-1.4.0
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

MAINTAINER=	Joshua Stein <jcs@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 c crypto

NO_REGRESS=	Yes
USE_X11=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-x=${X11BASE} \
		--with-sound=sun \
		--with-ipv6

.include <bsd.port.mk>
