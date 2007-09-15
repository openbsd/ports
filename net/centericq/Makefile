# $OpenBSD: Makefile,v 1.32 2007/09/15 22:36:52 merdely Exp $

BROKEN=		requires update but new version has issues

COMMENT=	curses-based icq client implementation

DISTNAME=	centericq-4.9.11
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net	
MASTER_SITES=	http://konst.org.ua/download/ \
		http://centericq.de/archive/source/releases/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c crypto m ncurses ssl stdc++

MODULES=	devel/gettext

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-libiconv-prefix="${LOCALBASE}"

DOCS=		README FAQ

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/centericq.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
