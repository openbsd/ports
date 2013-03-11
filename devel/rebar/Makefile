# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:27 espie Exp $

COMMENT=		Erlang build tool

V=			2.0.0
DISTNAME=		basho-rebar-$V-0-g1c98f6c
PKGNAME=		rebar-$V

CATEGORIES=		devel lang/erlang

HOMEPAGE=		https://github.com/basho/rebar/wiki

# APLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://distfiles.nl/

WRKDIST=		${WRKDIR}/basho-rebar-1c98f6c/

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/erlang

NO_TEST=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar ${PREFIX}/bin/

.include <bsd.port.mk>
