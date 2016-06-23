# $OpenBSD: Makefile,v 1.2 2016/06/23 13:26:06 sthen Exp $

COMMENT=		GNU units conversion program

DISTNAME=		units-2.13
PKGNAME=		g${DISTNAME}
CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_GNU:=units/}

HOMEPAGE=		https://www.gnu.org/software/units/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m readline termcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

.include <bsd.port.mk>
