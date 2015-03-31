# $RuOBSD: Makefile,v 1.3 2002/04/10 05:14:52 form Exp $
# $OpenBSD: Makefile,v 1.43 2015/03/31 12:26:40 bcallah Exp $

COMMENT=		Joe's Own Editor

DISTNAME=		joe-4.0
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=joe-editor/}

MAINTAINER=		Brian Callahan <bcallah@openbsd.org>
HOMEPAGE=		http://joe-editor.sourceforge.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses m util

CONFIGURE_STYLE=	gnu

FAKE_FLAGS=	sysconf_joedir=${PREFIX}/share/examples/joe \
		sysconf_docdir=${PREFIX}/share/doc/joe

.include <bsd.port.mk>
