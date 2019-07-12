# $OpenBSD: Makefile,v 1.22 2019/07/12 20:45:57 sthen Exp $

COMMENT=		Erlang build tool

GH_TAGNAME=		2.6.4
GH_ACCOUNT=		rebar
GH_PROJECT=		rebar
FULLPKGNAME =		rebar${ERL_VERSION}-${GH_TAGNAME}

CATEGORIES=		devel lang/erlang

HOMEPAGE=		https://github.com/rebar/rebar

# APLv2
PERMIT_PACKAGE=	Yes

# This port cannot use the erlang module for the module depends on this port.
# Keep in sync with erlang.port.mk
FLAVORS =		erlang16 erlang17 erlang18 erlang19 erlang21
FLAVOR ?=		erlang16

.if ${FLAVOR:Merlang16} || ${FLAVOR:Merlang17} || ${FLAVOR:Merlang18} \
    || ${FLAVOR:Merlang19 || ${FLAVOR:Merlang21}} 
_EV =			${FLAVOR:C/.*([0-9][0-9]+\$)/\1/}
RUN_DEPENDS =		lang/erlang/${_EV}
ERL_VERSION =		${_EV}
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
