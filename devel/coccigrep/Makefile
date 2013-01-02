# $OpenBSD: Makefile,v 1.4 2013/01/02 15:42:02 landry Exp $

COMMENT =	semantic grep, based on coccinelle
# coccinelle -> ocaml which is also not for hppa
NOT_FOR_ARCHS =	hppa

MODPY_EGG_VERSION = 1.11
DISTNAME =	coccigrep-${MODPY_EGG_VERSION}

CATEGORIES =	devel textproc

HOMEPAGE =	http://home.regit.org/software/coccigrep/

# GPLv3 only
PERMIT_PACKAGE_CDROM =	 Yes
PERMIT_PACKAGE_FTP =	 Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	 Yes

MASTER_SITES =	http://home.regit.org/wp-content/uploads/2011/08/

MODULES =	lang/python
RUN_DEPENDS =	devel/coccinelle
NO_REGRESS =	Yes

MODPY_SETUPTOOLS = Yes

post-configure:
	${SUBST_CMD} ${WRKSRC}/src/coccigrep.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/coccigrep
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/coccigrep/
	${INSTALL_DATA} ${WRKSRC}/coccigrep.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
