# $OpenBSD: Makefile,v 1.19 2014/09/01 16:31:57 ajacoutot Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-3.2.1
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
