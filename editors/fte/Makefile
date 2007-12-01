# $OpenBSD: Makefile,v 1.1.1.1 2007/12/01 21:19:33 mgrimm Exp $

COMMENT=	powerful and intuitive editor for programmers

DISTNAME=	fte-20070915
CATEGORIES=	editors devel

HOMEPAGE=	http://fte.sourceforge.net/

MAINTAINER=	Moritz Grimm <mdgrimm@gmx.net>

# GPLv2 or later / Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xpm c m stdc++

MASTER_SITES=	http://scapa.dnsalias.net/distfiles/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://www.phxbsd.com/OpenBSD/

NO_REGRESS=	Yes
USE_X11=	Yes

MAKE_ENV+=	CC="${CC}" CXX="${CXX}"

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fte
		${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/fte/

.include <bsd.port.mk>
