# $OpenBSD: Makefile,v 1.48 2017/05/11 14:01:57 benoit Exp $

COMMENT=		Joe's Own Editor

DISTNAME =		joe-4.4
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
