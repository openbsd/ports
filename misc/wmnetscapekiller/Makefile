# $OpenBSD: Makefile,v 1.8 2001/10/25 22:34:50 wilfried Exp $

COMMENT=		'wm-dockapp; for killing Netscape when it freezes'

DISTNAME=		wmNetscapeKiller-0.3
PKGNAME=		${DISTNAME:L}
CATEGORIES=		misc x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://pblumo.free.fr/wmNetscapeKiller/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}wmNetscapeKiller-0.3/ \
			ftp://ftp.darenet.dk/mirrors/mirror.linuxberg.com/files/x11/dock/ \
			ftp://ftp.proxad.net/mirrors/ftp.linuxberg.com/files/x11/dock/

RUN_DEPENDS=		::sysutils/skill

USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
