# $OpenBSD: Makefile,v 1.1.1.1 2008/08/23 16:33:40 simon Exp $

COMMENT =	documentation generator for postgresql databases

DISTNAME =	postgresql_autodoc-1.31
CATEGORIES =	databases

HOMEPAGE =	http://www.rbt.ca/autodoc/
MASTER_SITES =	${HOMEPAGE}binaries/

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::databases/p5-DBD-Pg \
		::devel/p5-Term-ReadKey \
		::www/p5-HTML-Template

WRKDIST =	${WRKDIR}/postgresql_autodoc

PKG_ARCH =	*
NO_REGRESS =	Yes

do-build:
	sed -e 's,@@TEMPLATE-DIR@@,${LOCALBASE}/share/postgresql_autodoc,' \
		-e 's,/usr/bin/env perl,/usr/bin/perl,' \
		${WRKSRC}/postgresql_autodoc.pl > ${WRKSRC}/postgresql_autodoc

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/postgresql_autodoc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/postgresql_autodoc
	${INSTALL_DATA} ${WRKSRC}/*.tmpl ${PREFIX}/share/postgresql_autodoc

.include <bsd.port.mk>
