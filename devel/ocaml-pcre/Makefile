# $OpenBSD: Makefile,v 1.11 2016/06/23 19:23:53 krw Exp $

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

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-ocamlbuild
LIB_DEPENDS =	devel/pcre
WANTLIB =	pcre

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	@cp -R ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/
	${INSTALL_DATA} ${FILESDIR}/README ${PREFIX}/share/examples/${NAME}/
	@chmod -R u=rwX,go=rX ${PREFIX}/share/examples/${NAME}/*

.include <bsd.port.mk>
