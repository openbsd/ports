# $OpenBSD: Makefile,v 1.4 2014/05/22 14:05:40 jasper Exp $

COMMENT=		Erlang build tool

GH_VER=			2.3.0
PROJECT=		rebar
DISTNAME=		${PROJECT}-${GH_VER}

CATEGORIES=		devel lang/erlang

HOMEPAGE=		https://github.com/rebar/rebar

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/rebar/${PROJECT}/archive/
DISTFILES=		${DISTNAME}{${GH_VER}${EXTRACT_SUFX}}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/erlang

NO_TEST=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar ${PREFIX}/bin/

.include <bsd.port.mk>
