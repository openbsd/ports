# $OpenBSD: Makefile,v 1.3 2017/05/28 09:52:22 jasper Exp $

COMMENT=		GNU units conversion program

DISTNAME=		units-2.14
PKGNAME=		g${DISTNAME}
CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_GNU:=units/}

HOMEPAGE=		https://www.gnu.org/software/units/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m readline termcap

MODULES =		lang/python

RUN_DEPENDS =		textproc/py-unidecode,${MODPY_FLAVOR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

.include <bsd.port.mk>
