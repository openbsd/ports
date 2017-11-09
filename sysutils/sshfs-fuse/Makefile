# $OpenBSD: Makefile,v 1.6 2017/11/09 16:50:39 ajacoutot Exp $

COMMENT =	mount remote directories over ssh

DISTNAME =	sshfs-fuse-2.5
CATEGORIES =	sysutils
REVISION =	0

HOMEPAGE =	http://fuse.sourceforge.net/sshfs.html
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=fuse/}

MAINTAINER =	Gallon Sylvestre <ccna.syl@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c fuse glib-2.0 gthread-2.0 pthread

MODULES=	devel/gettext

CONFIGURE_STYLE =	gnu

LIB_DEPENDS =	devel/glib2

.include <bsd.port.mk>
