# $OpenBSD: Makefile,v 1.23 2002/07/07 10:50:52 jakob Exp $

COMMENT=	"Matt's traceroute - network diagnostic tool"

DISTNAME=	mtr-0.49
CATEGORIES=	net
NEED_VERSION=	1.475

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.bitwizard.nl/mtr/

PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	ftp://ftp.bitwizard.nl/mtr/ \
		ftp://ftp.lysator.liu.se/mirror/unix/mtr/

MASTER_SITES0=	ftp://ftp.kame.net/pub/kame/misc/
PATCHFILES=	mtr-049-v6-20020402.diff.gz:0
PATCH_DIST_STRIP=	-p1

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-ipv6
USE_GMAKE=	yes

FLAVORS=        curses

FLAVOR?=
.if ${FLAVOR:L} == "curses"
CONFIGURE_ARGS+=	--without-gtk
.else
CONFIGURE_ARGS+=	--with-gtk-prefix=${LOCALBASE}
LIB_DEPENDS+=		gtk.1.2,gdk.1.2::x11/gtk+
.endif

.include <bsd.port.mk>
