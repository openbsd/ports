# $RuOBSD: Makefile,v 1.3 2002/04/10 05:14:52 form Exp $
# $OpenBSD: Makefile,v 1.40 2010/10/23 18:26:20 sthen Exp $

COMMENT=		Joe's Own Editor

DISTNAME=		joe-3.7
REVISION=		0
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=joe-editor/}

MAINTAINER=		Oleg Safiullin <form@openbsd.org>

HOMEPAGE=		http://joe-editor.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c ncurses m util

CONFIGURE_STYLE=	gnu

USE_GROFF =	Yes
FAKE_FLAGS=	sysconf_joedir=${PREFIX}/share/examples/joe \
		sysconf_docdir=${PREFIX}/share/doc/joe

.include <bsd.port.mk>
