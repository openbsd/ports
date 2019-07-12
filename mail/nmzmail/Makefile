# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:31 sthen Exp $

COMMENT=	fast maildir search engine

DISTNAME=	nmzmail-1.1
REVISION=	4

CATEGORIES=	mail textproc
HOMEPAGE=	http://www.ecademix.com/JohannesHofmann/nmzmail.html

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c curses readline

MASTER_SITES=	${HOMEPAGE:nmzmail.html=}

BUILD_DEPENDS=	textproc/namazu
RUN_DEPENDS=	textproc/namazu

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE=autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nmzmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nmzmail/

.include <bsd.port.mk>
