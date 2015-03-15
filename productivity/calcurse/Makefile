# $OpenBSD: Makefile,v 1.20 2015/03/15 08:29:08 ajacoutot Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.0.0
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
