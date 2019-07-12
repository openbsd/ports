# $OpenBSD: Makefile,v 1.13 2019/07/12 20:48:55 sthen Exp $

COMMENT=	object oriented type setting language

DISTNAME=	lout-3.40
CATEGORIES=	print textproc
FIX_EXTRACT_PERMISSIONS =	Yes

HOMEPAGE=	http://savannah.nongnu.org/projects/lout/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=lout/}

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	prg2lout lout
INSTALL_TARGET=	install installman installdoc
NO_TEST=	Yes

WANTLIB=	c m z

post-install:
	env LOUTLIB=${PREFIX}/lib/lout \
		${PREFIX}/bin/lout -x -s ${PREFIX}/lib/lout/include/init

.include <bsd.port.mk>
