# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 10:56:30 jasper Exp $

COMMENT=	Erlang PostgreSQL client

VERSION=	1.4.1
DISTNAME=	epgsql-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	databases lang/erlang

HOMEPAGE=	https://github.com/opscode/epgsql

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
TAR=		${LOCALBASE}/bin/gtar

BUILD_DEPENDS=	archivers/gtar \
		devel/rebar
RUN_DEPENDS=	lang/erlang

USE_GMAKE=	Yes
MAKE_ENV+=	VERSION=${VERSION}

ALL_TARGET=	#empty
FAKE_TARGET=	app

# Should actually have a 'dialyzer' target which creates the PLT on the fly.
NO_REGRESS=	Yes

SUBST_VARS+=	VERSION

# The 'app' target creates a nice directory for us to actually install.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/erlang/lib/
	cp -r ${WRKSRC}/${DISTNAME} ${PREFIX}/lib/erlang/lib/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/erlang/lib/

.include <bsd.port.mk>
