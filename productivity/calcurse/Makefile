# $OpenBSD: Makefile,v 1.32 2019/11/08 15:45:20 fcambus Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.5.1
EPOCH=		0

CATEGORIES=	productivity

MAINTAINER=	Frederic Cambus <fcambus@openbsd.org>

HOMEPAGE=	https://calcurse.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c curses iconv intl m pthread

MASTER_SITES=	${HOMEPAGE}files/

RUN_DEPENDS=	www/py-httplib2${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gettext,-runtime

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

.include <bsd.port.mk>
