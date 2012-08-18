# $OpenBSD: Makefile,v 1.1.1.1 2012/08/18 22:56:33 avsm Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

DISTNAME =	lambda-term-1.2
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/945/

HOMEPAGE =	http://forge.ocamlcore.org/projects/lambda-term


# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-zed
RUN_DEPENDS =	lang/ocaml devel/ocaml-zed
LIB_DEPENDS =	devel/libev
WANTLIB =	c ev m pthread

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES} \
		${PREFIX}/share/doc/ocaml-lambda-term/


.include <bsd.port.mk>
