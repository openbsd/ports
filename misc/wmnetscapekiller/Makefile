# $OpenBSD: Makefile,v 1.12 2002/12/29 19:49:41 fgsch Exp $

COMMENT=		'wm-dockapp; for killing Netscape when it freezes'

DISTNAME=		wmNetscapeKiller-0.3
PKGNAME=		${DISTNAME:L}
CATEGORIES=		misc x11 x11/windowmaker

HOMEPAGE=		http://pblumo.free.fr/wmNetscapeKiller/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}wmNetscapeKiller-0.3/

RUN_DEPENDS=		:skill-*:sysutils/skill

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
