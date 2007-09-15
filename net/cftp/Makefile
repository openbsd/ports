# $OpenBSD: Makefile,v 1.4 2007/09/15 22:36:52 merdely Exp $

COMMENT=	full screen FTP client

DISTNAME=	cftp-0.12
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net

HOMEPAGE=	http://ftp.giga.or.at/pub/nih/cftp/

MAINTAINER=	Josh Rivel <dorqus@freek.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

