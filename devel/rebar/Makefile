# $OpenBSD: Makefile,v 1.11 2015/06/25 14:28:33 jasper Exp $

COMMENT=		Erlang build tool

GH_ACCOUNT=		rebar
GH_PROJECT=		rebar
GH_TAGNAME=		2.5.1
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
FULLPKGNAME =		rebar${ERL_VERSION}-${GH_TAGNAME}
REVISION=		1

CATEGORIES=		devel lang/erlang

HOMEPAGE=		https://github.com/rebar/rebar

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

# This port cannot use the erlang module for the module depends on this port.
# Keep in sync with erlang.port.mk
FLAVORS =		erlang16 erlang17
FLAVOR ?=		erlang16

.if ${FLAVOR:Merlang16}
RUN_DEPENDS =		lang/erlang/16
ERL_VERSION =		16
.elif ${FLAVOR:Merlang17}
RUN_DEPENDS =		lang/erlang/17
ERL_VERSION =		17
.else
ERRORS +=		"Invalid FLAVOR set: ${FLAVOR}"
.endif

BUILD_DEPENDS +=	${RUN_DEPENDS}

SUBST_VARS +=		ERL_VERSION

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/bootstrap ${WRKSRC}/src/rebar_escripter.erl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar ${PREFIX}/bin/rebar${ERL_VERSION}

.include <bsd.port.mk>
