# $OpenBSD: Makefile,v 1.1.1.1 2002/04/27 06:16:18 wcobb Exp $

COMMENT=	"Haskell 98 interpreter"

DISTNAME=	hugs98-Dec2001
HOMEPAGE=	http://www.haskell.org/hugs/

CATEGORIES=	lang
NEED_VERSION=	1.525
MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

MASTER_SITES=	http://cvs.haskell.org/Hugs/downloads/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	autoconf dest
CONFIGURE_ENV+=		CFLAGS="${CFLAGS}"

WRKBUILD=		${WRKDIST}/src
AUTOCONF_DIR=		${WRKDIST}/src/unix

do-configure:
	cd ${WRKBUILD}/unix && \
	   ${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}

ALL_TARGET=

NO_REGRESS=	Yes

.include <bsd.port.mk>
