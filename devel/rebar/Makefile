# $OpenBSD: Makefile,v 1.1.1.1 2012/07/07 14:28:59 jasper Exp $

COMMENT=		Erlang build tool

V=			2.0.0
DISTNAME=		basho-rebar-$V-0-g1c98f6c
PKGNAME=		rebar-$V

CATEGORIES=		devel lang/erlang

HOMEPAGE=		https://github.com/basho/rebar/wiki

# APLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://distfiles.nl/

WRKDIST=		${WRKDIR}/basho-rebar-1c98f6c/

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		lang/erlang

NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/rebar ${PREFIX}/bin/

.include <bsd.port.mk>
