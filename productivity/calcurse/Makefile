# $OpenBSD: Makefile,v 1.37 2021/02/23 19:39:36 sthen Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.7.0
EPOCH=		0
REVISION=	0

CATEGORIES=	productivity

HOMEPAGE=	https://calcurse.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv intl m pthread

MASTER_SITES=	${HOMEPAGE}files/

RUN_DEPENDS=	www/py-httplib2${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gettext,-runtime

MODULES=	lang/python

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

.include <bsd.port.mk>
