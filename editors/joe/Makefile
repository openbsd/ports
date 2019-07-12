# $OpenBSD: Makefile,v 1.52 2019/07/12 20:46:05 sthen Exp $

COMMENT=		Joe's Own Editor

DISTNAME=		joe-4.6
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=joe-editor/}

HOMEPAGE=		http://joe-editor.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB=		c curses m util

BUILD_DEPENDS=		converters/libiconv

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=	sysconf_joedir=${PREFIX}/share/examples/joe \
		sysconf_docdir=${PREFIX}/share/doc/joe

post-build:
	iconv -f KOI8-T -t UTF-8 ${WRKSRC}/man/ru/joe.1 > \
		${WRKBUILD}/man/ru/joe.1-utf8

post-install:
	${INSTALL_MAN} ${WRKBUILD}/man/ru/joe.1-utf8 \
		${PREFIX}/man/ru/man1/joe.1

.include <bsd.port.mk>
