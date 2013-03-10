# $OpenBSD: Makefile,v 1.3 2013/03/10 19:35:27 jasper Exp $

COMMENT=	Erlang library for building lightweight HTTP servers

VERSION=	1.5.1
DISTNAME=	mochiweb-${VERSION}p3
PKGNAME=	erl-${DISTNAME:S/p3//}
REVISION=	0
CATEGORIES=	www

HOMEPAGE=	https://github.com/basho/mochiweb

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,include,scripts,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/include/*.hrl ${ERL_LIBDIR}/include/
	${INSTALL_DATA} ${WRKSRC}/scripts/*.erl ${ERL_LIBDIR}/scripts/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
