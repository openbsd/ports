# $OpenBSD: Makefile,v 1.1.1.1 2016/01/28 10:31:15 sthen Exp $

COMMENT=		GNU units conversion program

DISTNAME=		units-2.12
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
