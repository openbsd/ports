# $OpenBSD: Makefile,v 1.43 2018/02/27 17:20:13 bket Exp $

COMMENT=		GNU dbm

DISTNAME=		gdbm-1.14.1
CATEGORIES=		databases

SHARED_LIBS=		gdbm	5.0	# 5.0

HOMEPAGE=		https://www.gnu.org/software/gdbm/

MASTER_SITES=		${MASTER_SITE_GNU:=gdbm/}

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

LIB_DEPENDS=		devel/gettext

WANTLIB=		c curses iconv intl readline

CONFIGURE_STYLE= 	gnu

.include <bsd.port.mk>
