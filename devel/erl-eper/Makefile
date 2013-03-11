# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:03 espie Exp $

COMMENT=	collection of Erlang Performancy related tools

VERSION=	0.62
DISTNAME=	eper-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/massemanet/eper

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

NO_TEST=	Yes

do-build:
	cd ${WRKSRC} && ${REBAR_BIN} compile escriptize

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,priv,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	cp -r ${WRKSRC}/priv/* ${ERL_LIBDIR}/priv/
	chown -R ${SHAREOWN}:${SHAREGRP} ${ERL_LIBDIR}/priv/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/
	# XXX: gtknode is required for gperf, so remove gperf for now.
	@find ${ERL_LIBDIR} -type f -name gperf\* | xargs rm

.include <bsd.port.mk>
