# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:12 espie Exp $

COMMENT =	abstract engine for text edition
CATEGORIES =	devel

DISTNAME =	zed-1.2
PKGNAME =	ocaml-${DISTNAME}
REVISION =	1
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/944/

HOMEPAGE =	http://forge.ocamlcore.org/projects/zed/

# BSD3
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-react devel/ocaml-camomile
RUN_DEPENDS =	lang/ocaml devel/ocaml-camomile

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} ${WRKDIST}/{LICENSE,CHANGES} ${PREFIX}/share/doc/ocaml-zed/


.include <bsd.port.mk>
