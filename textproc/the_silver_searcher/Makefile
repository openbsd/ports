# $OpenBSD: Makefile,v 1.8 2014/03/25 18:57:31 bcallah Exp $

COMMENT =	code searching tool, with a focus on speed (ag)

DISTNAME =	the_silver_searcher-0.21.1
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/ggreer/the_silver_searcher
MAINTAINER =	Florian Stinglmayr <florian@n0la.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lzma pcre pthread z

MASTER_SITES =	http://geoff.greer.fm/ag/releases/

LIB_DEPENDS =	archivers/xz \
		devel/pcre

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include"

NO_TEST =	YES

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ag ${PREFIX}/bin/ag
	${INSTALL_MAN} ${WRKSRC}/doc/ag.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	${INSTALL_DATA} ${WRKSRC}/ag.bashcomp.sh ${PREFIX}/share/bash-completion/completions/ag

.include <bsd.port.mk>
