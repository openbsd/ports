# $OpenBSD: Makefile,v 1.2 2009/06/12 16:58:07 jasper Exp $

COMMENT =	implement the data type "matrix of reals"
DISTNAME =	Math-MatrixReal-2.05
CATEGORIES =	math
HOMEPAGE =	http://search.cpan.org/~leto/Math-MatrixReal/
MAINTAINER =	Markus Bergkvist <markus.bergkvist@telia.com>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

CPAN_AUTHOR =	LETO

MODULES =	cpan

CONFIGURE_STYLE =	modbuild

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Math-MatrixReal
	${INSTALL_DATA} ${WRKSRC}/example/*.pl \
		${PREFIX}/share/examples/p5-Math-MatrixReal

.include <bsd.port.mk>
