# $OpenBSD: Makefile,v 1.7 2021/02/23 19:39:29 sthen Exp $

COMMENT=		GNU units conversion program

DISTNAME=		units-2.16
PKGNAME=		g${DISTNAME}
CATEGORIES=		math
MASTER_SITES=		${MASTER_SITE_GNU:=units/}
REVISION=		0

HOMEPAGE=		https://www.gnu.org/software/units/

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += c curses m readline

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

RUN_DEPENDS =		textproc/py-unidecode,${MODPY_FLAVOR}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--program-prefix=g

.include <bsd.port.mk>
