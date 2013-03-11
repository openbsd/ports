# $OpenBSD: Makefile,v 1.5 2013/03/11 13:02:16 jasper Exp $

COMMENT=	EDoc extension for generating GitHub-flavored Markdown

# git clone as of 75a6fe569ea3ee0024bbb66d267cc622bbffd8e1
VERSION=	0.3.1.1
DISTNAME=	edown-${VERSION}
PKGNAME=	erl-${DISTNAME}
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/seth/edown

# Apache2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://distfiles.nl/

MODULES=	lang/erlang

NO_TEST=	Yes

ERL_APP_SUBST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/
	${INSTALL_SCRIPT} ${WRKSRC}/edown_make ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
