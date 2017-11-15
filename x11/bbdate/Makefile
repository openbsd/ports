# $OpenBSD: Makefile,v 1.20 2017/11/15 21:28:05 sthen Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
REVISION=	3
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/}
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 c m ${COMPILER_LIBCXX}

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
