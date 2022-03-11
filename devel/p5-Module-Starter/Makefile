COMMENT =		simple starter kit for any module

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Module-Starter-1.54
REVISION =		4
CATEGORIES =		devel
CPAN_AUTHOR =		PETDANCE

# Perl
PERMIT_PACKAGE =		Yes

DOC_DIR =	${PREFIX}/share/doc/p5-Module-Starter/

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/*.html ${DOC_DIR}

.include <bsd.port.mk>
