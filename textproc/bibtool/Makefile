COMMENT =		tool for manipulating BibTeX databases

VERSION =		2.68
DISTNAME =		BibTool-${VERSION}
PKGNAME =		bibtool-${VERSION}

CATEGORIES =		textproc

# https://github.com/ge-ne/bibtool
HOMEPAGE =		https://www.gerd-neugebauer.de/software/TeX/BibTool/en/

MAINTAINER =		Marco van Hulten <marco@hulten.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += c

SITES =			https://www.gerd-neugebauer.de/software/TeX/BibTool/
# At https://mirrors.ctan.org/biblio/bibtex/utils/bibtool/ lives a tarball with
# a different checksum, but their contents are identical.

FAKE_FLAGS =		INSTALLPREFIX=${WRKINST}
TEST_FLAGS =		TEXMFCNF=${PREFIX}/share/texmf-dist/web2c

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-kpathsea

MAKE_FILE =		makefile
WRKDIST =		${WRKDIR}/BibTool

post-install:
	${INSTALL_MAN} ${WRKSRC}/doc/bibtool.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
