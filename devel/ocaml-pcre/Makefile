# $OpenBSD: Makefile,v 1.10 2016/03/29 11:27:00 naddy Exp $

COMMENT =	OCaml Perl-compatible regexp library
CATEGORIES =	devel textproc

V =		7.1.5
NAME =		ocaml-pcre
DISTNAME =	pcre-ocaml-$V
PKGNAME =	${NAME}-$V
REVISION =	0
MASTER_SITES =	https://github.com/mmottl/pcre-ocaml/releases/download/v${V}/
HOMEPAGE =	https://github.com/mmottl/pcre-ocaml

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib
LIB_DEPENDS =	devel/pcre
WANTLIB =	pcre

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	@cp -R ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/
	${INSTALL_DATA} ${FILESDIR}/README ${PREFIX}/share/examples/${NAME}/
	@chmod -R u=rwX,go=rX ${PREFIX}/share/examples/${NAME}/*

.include <bsd.port.mk>
