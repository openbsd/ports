# $OpenBSD: Makefile,v 1.48 2021/01/27 16:54:50 naddy Exp $

COMMENT=		GNU dbm

DISTNAME=		gdbm-1.19
CATEGORIES=		databases

SHARED_LIBS=		gdbm	5.1	# 6.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE=	Yes

LIB_DEPENDS=		devel/gettext,-runtime

WANTLIB=		c curses iconv intl readline

CONFIGURE_STYLE= 	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux

.include <bsd.port.mk>
