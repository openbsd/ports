# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 11:55:49 jasper Exp $

COMMENT=	collection of Erlang Performancy related tools

VERSION=	0.62
DISTNAME=	eper-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	devel lang/erlang

HOMEPAGE=	https://github.com/massemanet/eper

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	devel/rebar
RUN_DEPENDS=	lang/erlang

NO_REGRESS=	Yes

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/rebar compile escriptize

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	cp -r ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	chown -R ${SHAREOWN}:${SHAREGRP} ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/
	# XXX: gtknode is required for gperf, so remove gperf for now.
	@find ${ERL_LIBDIR} -type f -name gperf\* | xargs rm

.include <bsd.port.mk>
