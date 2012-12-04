# $OpenBSD: Makefile,v 1.6 2012/12/04 06:56:39 chrisz Exp $

COMMENT =	library for manipulating the terminal
CATEGORIES =	devel

# also adapt MASTER_SITES when changing the version!
DISTNAME =	lambda-term-1.3
PKGNAME =	ocaml-${DISTNAME}
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/1034/

HOMEPAGE =	http://forge.ocamlcore.org/projects/lambda-term


# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

WANTLIB =	c ev m pthread

MODULES =	lang/ocaml

BUILD_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
RUN_DEPENDS =	devel/ocaml-lwt devel/ocaml-zed
LIB_DEPENDS =	devel/libev

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} \
		${WRKDIST}/{LICENSE,CHANGES} \
		${PREFIX}/share/doc/ocaml-lambda-term/


.include <bsd.port.mk>
