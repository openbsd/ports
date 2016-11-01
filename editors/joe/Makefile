# $OpenBSD: Makefile,v 1.47 2016/11/01 21:07:25 jasper Exp $

COMMENT=		Joe's Own Editor

DISTNAME=		joe-4.3
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=joe-editor/}

HOMEPAGE=		http://joe-editor.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses m util

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=	sysconf_joedir=${PREFIX}/share/examples/joe \
		sysconf_docdir=${PREFIX}/share/doc/joe

.include <bsd.port.mk>
