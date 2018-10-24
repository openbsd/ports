# $OpenBSD: Makefile,v 1.21 2018/10/24 14:28:12 sthen Exp $

COMMENT=	displays the date and resembles the toolbar

DISTNAME=	bbdate-0.2.4
REVISION=	4
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bbtools/}
HOMEPAGE=	http://bbtools.sourceforge.net/download.php?file=3

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
