# $OpenBSD: Makefile,v 1.12 2000/04/13 16:02:08 jakob Exp $

DISTNAME=	mtr-0.41
CATEGORIES=	net
NEED_VERSION=	1.258

MAINTAINER=     jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/ \
		ftp://ftp.lysator.liu.se/mirror/unix/mtr/

MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=	mtr-041-v6-20000127a.diff.gz:0
PATCH_DIST_STRIP=	-p1

FAKE=		yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+=	--enable-ipv6
USE_GMAKE=	yes

FLAVORS=        curses

FLAVOR?=
.if ${FLAVOR:L} == "curses"
CONFIGURE_ARGS+=	--disable-gtk
.else
LIB_DEPENDS=		gtk.1.2::x11/gtk+
.endif

.include <bsd.port.mk>
