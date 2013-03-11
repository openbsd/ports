# $OpenBSD: Makefile,v 1.5 2013/03/11 02:52:04 espie Exp $

COMMENT=	Erlang PostgreSQL client

VERSION=	1.4.1
DISTNAME=	epgsql-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	databases

HOMEPAGE=	https://github.com/opscode/epgsql

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

MAKE_ENV+=	VERSION=${VERSION}

ALL_TARGET=	#empty
FAKE_TARGET=	app

# Should actually have a 'dialyzer' target which creates the PLT on the fly.
NO_TEST=	Yes

# The 'app' target creates a nice directory for us to actually install.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/erlang/lib/
	cp -r ${WRKSRC}/${DISTNAME} ${PREFIX}/lib/erlang/lib/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/erlang/lib/

.include <bsd.port.mk>
