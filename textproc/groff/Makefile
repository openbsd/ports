# $OpenBSD: Makefile,v 1.49 2020/03/20 16:44:27 naddy Exp $

COMMENT =		GNU troff typesetter
VERSION =		1.22.4
SUBST_VARS =		VERSION
DISTNAME =		groff-${VERSION}
REVISION =		3

CATEGORIES =		textproc
DPB_PROPERTIES =	parallel

HOMEPAGE =		https://www.gnu.org/software/groff/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

# Groff does not use C++, but merely pre-1995 C with classes.
COMPILER =		base-clang base-gcc

MASTER_SITES =		${MASTER_SITE_GNU:=groff/}

MAKE_FLAGS +=		docdir=${PREFIX}/share/doc/groff \
			exampledir=${PREFIX}/share/examples/groff \
			ac_cv_path_mkdir=/bin/mkdir

MODULES =		perl
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-awk=awk --without-gs \
			--without-libiconv-prefix --without-uchardet \
			--without-urw-fonts-dir --without-x \
			pnmcrop=missing pnmcut=missing pnmtopng=missing \
			pnmtops=missing psselect=missing
CONFIGURE_ENV +=	ac_cv_prog_PDFFONTS= \
			ac_cv_prog_PDFIMAGES= \
			ac_cv_prog_PDFINFO= \
			ac_cv_prog_XPMTOPPM=
TEST_TARGET =		check

pre-configure:
	find ${WRKBUILD} -name \*.pl -type f -exec ${MODPERL_BIN_ADJ} {} +

.include <bsd.port.mk>
