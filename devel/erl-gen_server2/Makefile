# $OpenBSD: Makefile,v 1.2 2013/03/10 19:20:06 jasper Exp $

COMMENT=	gen_server2 for OTP

VERSION=	1.0.0
DISTNAME=	gen_server2-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	devel

HOMEPAGE=	https://github.com/mdaguete/gen_server2

# Erlang Public License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

CONFIGURE_STYLE=rebar

do-build:
	cd ${WRKSRC} && ${LOCALBASE}/bin/rebar compile

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
