# $OpenBSD: Makefile,v 1.6 2014/09/10 07:13:06 jasper Exp $

COMMENT=		Erlang build tool

GH_ACCOUNT=		rebar
GH_PROJECT=		rebar
GH_TAGNAME=		2.5.1
GH_COMMIT=		e9f62c45807ce2db39e0606c4d97cd071416bd64
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
