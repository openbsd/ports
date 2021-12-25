# $OpenBSD: Makefile,v 1.20 2021/12/25 17:08:30 daniel Exp $

COMMENT =	OCaml Perl-compatible regexp library
CATEGORIES =	devel textproc

V =		7.5.0
NAME =		ocaml-pcre
DISTNAME =	pcre-$V
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	https://github.com/mmottl/pcre-ocaml/releases/download/${V}/
EXTRACT_SUFX =	.tbz
HOMEPAGE =	https://github.com/mmottl/pcre-ocaml

# GPLv2+
PERMIT_PACKAGE =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib \
		devel/dune \
		devel/dune,-configurator \
		devel/ocaml-ocamlbuild

LIB_DEPENDS =	devel/pcre

WANTLIB =	pcre

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	cp -R ${WRKDIST}/examples/* ${PREFIX}/share/examples/${NAME}/
	${INSTALL_DATA} ${FILESDIR}/README ${PREFIX}/share/examples/${NAME}/
	chmod -R u=rwX,go=rX ${PREFIX}/share/examples/${NAME}/*
	mv ${PREFIX}/doc/pcre ${PREFIX}/share/doc/${NAME}
	rm -rf ${PREFIX}/doc

.include <bsd.port.mk>
