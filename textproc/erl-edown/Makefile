# $OpenBSD: Makefile,v 1.1.1.1 2013/03/08 12:10:48 jasper Exp $

COMMENT=	EDoc extension for generating GitHub-flavored Markdown

# git clone as of 75a6fe569ea3ee0024bbb66d267cc622bbffd8e1
VERSION=	0.3.1.1
DISTNAME=	edown-${VERSION}
PKGNAME=	erl-${DISTNAME}
CATEGORIES=	textproc lang/erlang

HOMEPAGE=	https://github.com/seth/edown

# Apache2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

BUILD_DEPENDS=	devel/rebar
RUN_DEPENDS=	lang/erlang

NO_REGRESS=	Yes

ERL_LIBDIR=	${PREFIX}/lib/erlang/lib/${DISTNAME}
SUBST_VARS+=	VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/edown.app.src

do-install:
	${INSTALL_DATA_DIR} ${ERL_LIBDIR}/{ebin,src}
	${INSTALL_DATA} ${WRKSRC}/ebin/*.{app,beam} ${ERL_LIBDIR}/ebin/
	${INSTALL_DATA} ${WRKSRC}/src/*.erl ${ERL_LIBDIR}/src/
	${INSTALL_SCRIPT} ${WRKSRC}/edown_make ${ERL_LIBDIR}/src/

.include <bsd.port.mk>
