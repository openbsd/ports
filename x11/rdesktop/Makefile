# $OpenBSD: Makefile,v 1.20 2005/11/09 01:25:38 jcs Exp $

COMMENT=	"open source client for Windows Terminal Server"
DISTNAME=	rdesktop-1.4.1
CATEGORIES=	x11 net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=rdesktop/}

HOMEPAGE=	http://www.rdesktop.org/

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
		--with-sound=sun

.include <bsd.port.mk>
