# $OpenBSD: Makefile,v 1.8 2013/03/11 11:42:46 espie Exp $

COMMENT=		info viewer with lynx-style navigation

DISTNAME=		pinfo-0.6.9
CATEGORIES=		textproc devel

HOMEPAGE=		https://alioth.debian.org/frs/?group_id=30592

MAINTAINER=		Marc Espie <espie@openbsd.org>

MASTER_SITES=		https://alioth.debian.org/frs/download.php/1502/ \
			ftp://ftp.freebsd.org/pub/FreeBSD/distfiles/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c ncurses readline 

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

MODULES+=		devel/gettext

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	autoconf

MAKE_FLAGS+=	INTLLIBS='-L${LOCALBASE}/lib -lintl -liconv'

post-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pinfo
		${INSTALL_DATA} ${WRKSRC}/src/pinforc \
			${PREFIX}/share/examples/pinfo/

.include <bsd.port.mk>
