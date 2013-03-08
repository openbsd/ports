# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:01:22 jasper Exp $

COMMENT=	Erlang CouchDB framework

VERSION=	0.6.0
DISTNAME=	couchbeam-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	databases lang/erlang

HOMEPAGE=	https://github.com/opscode/couchbeam

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

BUILD_DEPENDS=	archivers/gtar \
		devel/erl-ejson \
		devel/rebar \
		net/erl-ibrowse \
		security/erl-oauth \
		www/erl-mochiweb
RUN_DEPENDS=	devel/erl-ejson \
		lang/erlang \
		net/erl-ibrowse \
		security/erl-oauth \
		www/erl-mochiweb

REGRESS_TARGET=	test
# needs a running couchdb instance
REGRESS_IS_INTERACTIVE=	Yes

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
