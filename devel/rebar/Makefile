# $OpenBSD: Makefile,v 1.5 2014/07/10 11:06:15 rpe Exp $

COMMENT=		Erlang build tool

GH_ACCOUNT=		rebar
GH_PROJECT=		rebar
GH_TAGNAME=		2.3.0
GH_COMMIT=		0fa0ff4f17bb180dc57147ba0bc31dde1377a899
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}

CATEGORIES=		devel lang/erlang

HOMEPAGE=		https://github.com/rebar/rebar

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/erlang

NO_TEST=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar ${PREFIX}/bin/

.include <bsd.port.mk>
