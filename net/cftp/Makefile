# $OpenBSD: Makefile,v 1.3 2006/08/09 10:24:51 bernd Exp $

COMMENT=	"full screen FTP client"

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

