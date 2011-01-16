# $OpenBSD: Makefile,v 1.5 2011/01/16 19:58:18 naddy Exp $

COMMENT=	powerful and intuitive editor for programmers

DISTNAME=	fte-20090118
CATEGORIES=	editors devel

HOMEPAGE=	http://fte.sourceforge.net/

# GPLv2 or later / Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB+=	X11 Xau Xdmcp Xpm c m stdc++

MASTER_SITES=	ftp://ftp.mrsserver.net/pub/distfiles/

NO_REGRESS=	Yes

MAKE_ENV+=	CC="${CC}" CXX="${CXX}"

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fte
		${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/fte/

.include <bsd.port.mk>
