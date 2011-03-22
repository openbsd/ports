# $OpenBSD: Makefile,v 1.10 2011/03/22 22:27:03 espie Exp $

COMMENT =		GNU troff typesetter
DISTNAME =		groff-1.21
REVISION =		1

CATEGORIES =		textproc
HOMEPAGE =		http://www.gnu.org/software/groff/
MAINTAINER =		Ingo Schwarze <schwarze@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =		${MASTER_SITE_GNU:=groff/}

MAKE_FLAGS +=		docdir=${PREFIX}/share/doc/groff \
			exampledir=${PREFIX}/share/examples/groff

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-libiconv-prefix --without-gs --without-x

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/src/libs/gnulib/build-aux

.include <bsd.port.mk>
