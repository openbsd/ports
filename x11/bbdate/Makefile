# $OpenBSD: Makefile,v 1.18 2017/07/23 09:26:29 espie Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
REVISION =	1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/}
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		ICE SM X11 c m ${COMPILER_LIBCXX}


CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
