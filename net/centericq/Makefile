# $OpenBSD: Makefile,v 1.24 2004/02/03 08:37:55 brad Exp $

COMMENT=	"curses-based icq client implementation"

DISTNAME=	centericq-4.9.10
CATEGORIES=	net	
MASTER_SITES=	http://konst.org.ua/download/ \
		http://konst.home.welcomehome.org/ \
		http://centericq.de/archive/source/releases/

HOMEPAGE=	http://konst.org.ua/software.centericq.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gcc3 gettext
MODGCC3_ARCHES=	sparc64
MODGCC3_LANGS=	c++

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-libiconv-prefix="${LOCALBASE}"

DOCS=		README FAQ

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/centericq
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/centericq
	${INSTALL_DATA} ${WRKSRC}/centericq.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
