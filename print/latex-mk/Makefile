# $OpenBSD: Makefile,v 1.5 2010/03/24 16:15:06 oga Exp $

COMMENT=	set of Makefile fragments to manage LaTeX documents

DISTNAME=	latex-mk-1.9.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	print
HOMEPAGE=	http://latex-mk.sourceforge.net/

MAINTAINER=	Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=latex-mk/}

CONFIGURE_STYLE=gnu
PKG_ARCH=	*

REGRESS_DEPENDS=::print/texlive/base

post-install:
	${INSTALL_DATA} ${WRKSRC}/dated_draft.ps ${PREFIX}/share/latex-mk

# workaround for modified dvips behavior
pre-regress:
	@perl -pi -e 's/^(\w+)?dvips/env  \1dvips/' \
		${WRKSRC}/testsuite/bmake_ref/*.ref

do-regress:
	@cd ${WRKBUILD}/testsuite && ./run_tests.sh --without-gmake

.include <bsd.port.mk>
