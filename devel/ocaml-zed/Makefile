# $OpenBSD: Makefile,v 1.3 2012/11/30 19:38:09 chrisz Exp $

COMMENT =	abstract engine for text edition
CATEGORIES =	devel

DISTNAME =	zed-1.2
PKGNAME =	ocaml-${DISTNAME}
REVISION =	1
MASTER_SITES =	http://forge.ocamlcore.org/frs/download.php/944/

HOMEPAGE =	http://forge.ocamlcore.org/projects/zed/

# BSD3
PERMIT_PACKAGE_FTP =		Yes
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_DISTFILES_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes

MODULES =	lang/ocaml

BUILD_DEPENDS =	sysutils/findlib devel/ocaml-react devel/ocaml-camomile
RUN_DEPENDS =	lang/ocaml devel/ocaml-camomile

CONFIGURE_STYLE =	oasis

post-install:
	${INSTALL_DATA} ${WRKDIST}/{LICENSE,CHANGES} ${PREFIX}/share/doc/ocaml-zed/


.include <bsd.port.mk>
