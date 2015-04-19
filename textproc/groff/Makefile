# $OpenBSD: Makefile,v 1.29 2015/04/19 15:20:43 schwarze Exp $

COMMENT =		GNU troff typesetter
VERSION =		1.22.3
SUBST_VARS =		VERSION
DISTNAME =		groff-${VERSION}
REVISION =		1

CATEGORIES =		textproc
DPB_PROPERTIES =	parallel

HOMEPAGE =		https://www.gnu.org/software/groff/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_GNU:=groff/}

MAKE_FLAGS +=		docdir=${PREFIX}/share/doc/groff \
			exampledir=${PREFIX}/share/examples/groff \
			ac_cv_path_mkdir=/bin/mkdir

MODULES =		perl
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-libiconv-prefix --without-gs --without-x \
			--with-awk=awk \
			pnmcrop=missing pnmcut=missing pnmtopng=missing \
			pnmtops=missing psselect=missing

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/src/libs/gnulib/build-aux

pre-configure:
	find ${WRKBUILD} -name \*.pl -type f -print0 | \
	    xargs -0 ${MODPERL_BIN_ADJ}

.include <bsd.port.mk>
