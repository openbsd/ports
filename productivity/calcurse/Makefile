# $OpenBSD: Makefile,v 1.25 2018/03/22 23:15:29 fcambus Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.3.0
REVISION=	0
EPOCH=		0

CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://calcurse.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl m ncursesw pthread

MASTER_SITES=	${HOMEPAGE}files/

RUN_DEPENDS=	www/py-httplib2${MODPY_FLAVOR}

LIB_DEPENDS=	devel/gettext

MODULES=	lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

.include <bsd.port.mk>
