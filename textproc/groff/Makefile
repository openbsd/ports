# $OpenBSD: Makefile,v 1.21 2013/03/30 23:10:05 schwarze Exp $

COMMENT =		GNU troff typesetter
VERSION =		1.22.2
SUBST_VARS =		VERSION
DISTNAME =		groff-${VERSION}

CATEGORIES =		textproc
DPB_PROPERTIES =	parallel

HOMEPAGE =		http://www.gnu.org/software/groff/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_GNU:=groff/}

MAKE_FLAGS +=		docdir=${PREFIX}/share/doc/groff \
			exampledir=${PREFIX}/share/examples/groff \
			ac_cv_path_mkdir=/bin/mkdir

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-libiconv-prefix --without-gs --without-x \
			--with-awk=awk \
			pnmcrop=missing pnmcut=missing pnmtopng=missing \
			pnmtops=missing psselect=missing

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/src/libs/gnulib/build-aux

pre-configure:
	find ${WRKBUILD} -name \*.pl -type f | \
		xargs perl -pi -e 's@^#![[:space:]]*/usr/bin/env[[:space:]]+perl@#!/usr/bin/perl@'

.include <bsd.port.mk>
