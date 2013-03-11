# $OpenBSD: Makefile,v 1.20 2013/03/11 11:42:41 espie Exp $

COMMENT =		GNU troff typesetter
DISTNAME =		groff-1.21
REVISION =		8

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
			--with-awk=awk

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/src/libs/gnulib/build-aux

pre-configure:
	find ${WRKBUILD} -name \*.pl -type f | \
		xargs perl -pi -e 's@^#![[:space:]]*/usr/bin/env[[:space:]]+perl@#!/usr/bin/perl@'

.include <bsd.port.mk>
