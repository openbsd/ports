# $OpenBSD: Makefile,v 1.3 2013/03/10 19:35:26 jasper Exp $

COMMENT=	Erlang CouchDB framework

VERSION=	0.6.0
DISTNAME=	couchbeam-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	databases

HOMEPAGE=	https://github.com/opscode/couchbeam

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

BUILD_DEPENDS=	devel/erl-ejson \
		net/erl-ibrowse \
		security/erl-oauth \
		www/erl-mochiweb
RUN_DEPENDS=	devel/erl-ejson \
		net/erl-ibrowse \
		security/erl-oauth \
		www/erl-mochiweb

# needs a running couchdb instance
REGRESS_IS_INTERACTIVE=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
