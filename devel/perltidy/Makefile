# $OpenBSD: Makefile,v 1.23 2019/03/12 22:47:02 sthen Exp $

COMMENT =	tool to indent and reformat perl scripts

V =		20181120
DISTNAME =	Perl-Tidy-$V
PKGNAME =	perltidy-$V
CATEGORIES =	devel

HOMEPAGE =	http://perltidy.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

PKG_ARCH =	*

DOCS =		tutorial.html stylekey.html

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/perltidy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/perltidy
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/docs/${f} ${PREFIX}/share/doc/perltidy
.endfor
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/perltidy

.include <bsd.port.mk>
