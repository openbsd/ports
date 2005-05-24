# $RuOBSD: Makefile,v 1.3 2002/04/10 05:14:52 form Exp $
# $OpenBSD: Makefile,v 1.32 2005/05/24 20:27:49 naddy Exp $

COMMENT=		"joe's own editor"

DISTNAME=		joe-3.3
CATEGORIES=		editors
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=joe-editor/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses m util

MAINTAINER=		Mike Pechkin <mpech@openbsd.org>

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		simple

.include <bsd.port.mk>
