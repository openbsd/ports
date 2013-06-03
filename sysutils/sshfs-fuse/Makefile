# $OpenBSD: Makefile,v 1.1.1.1 2013/06/03 16:25:24 landry Exp $

COMMENT =	Mount remote directories over ssh

VERSION =	2.4
DISTNAME =	sshfs-fuse-${VERSION}
CATEGORIES =	sysutils

HOMEPAGE =	http://fuse.sourceforge.net/sshfs.html
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fuse/}

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
WANTLIB =	c pthread glib-2.0
LIB_DEPENDS +=	devel/glib2

.include <bsd.port.mk>
