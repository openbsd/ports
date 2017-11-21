# $OpenBSD: Makefile,v 1.7 2017/11/21 00:13:04 naddy Exp $

COMMENT =	mount remote directories over ssh

DISTNAME =	sshfs-fuse-2.5
CATEGORIES =	sysutils
REVISION =	1

HOMEPAGE =	http://fuse.sourceforge.net/sshfs.html
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fuse/}

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  c fuse glib-2.0 gthread-2.0 iconv intl pthread

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	devel/glib2

.include <bsd.port.mk>
