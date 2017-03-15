# $OpenBSD: Makefile,v 1.23 2017/03/15 09:26:10 ajacoutot Exp $

COMMENT=	text-based calendar and scheduling application

DISTNAME=	calcurse-4.2.2
EPOCH=		0

CATEGORIES=	productivity

MAINTAINER=	Frederic Culot <frederic@culot.org>

HOMEPAGE=	http://calcurse.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl m ncursesw pthread

MASTER_SITES=	${HOMEPAGE}files/

LIB_DEPENDS=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--without-asciidoc

.include <bsd.port.mk>
