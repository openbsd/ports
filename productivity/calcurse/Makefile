# $OpenBSD: Makefile,v 1.21 2015/10/14 10:04:16 sthen Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.0.0
REVISION=	0
EPOCH=		0

CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://calcurse.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ncursesw pthread

MASTER_SITES=	${HOMEPAGE}files/

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

.include <bsd.port.mk>
