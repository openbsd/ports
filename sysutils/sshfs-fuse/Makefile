# $OpenBSD: Makefile,v 1.3 2013/06/03 22:17:41 sthen Exp $

COMMENT =	mount remote directories over ssh

DISTNAME =	sshfs-fuse-2.4
REVISION =	0
CATEGORIES =	sysutils

HOMEPAGE =	http://fuse.sourceforge.net/sshfs.html
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fuse/}

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	gnu

WANTLIB =	c pthread glib-2.0
LIB_DEPENDS +=	devel/glib2

.include <bsd.port.mk>
