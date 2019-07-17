# $OpenBSD: Makefile,v 1.9 2019/07/17 14:39:43 danj Exp $

COMMENT =	mount remote directories over ssh

DISTNAME =	sshfs-fuse-2.5
CATEGORIES =	sysutils
REVISION =	2

HOMEPAGE =	http://fuse.sourceforge.net/sshfs.html
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fuse/}

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =  c fuse glib-2.0 gthread-2.0 iconv intl pthread

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	devel/glib2

.include <bsd.port.mk>
