COMMENT=	object oriented type setting language

DISTNAME=	lout-3.41
CATEGORIES=	print textproc
FIX_EXTRACT_PERMISSIONS =	Yes

HOMEPAGE=	http://jeffreykingston.id.au/lout/
SITES=		http://jeffreykingston.id.au/lout/

MAINTAINER=	Joerg Jung <jung@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MAKE_FILE=	makefile
ALL_TARGET=	prg2lout lout
INSTALL_TARGET=	install installman installdoc
NO_TEST=	Yes

WANTLIB=	c m z

WRKDIST=	${WRKDIR}/lout-2023_06_19

post-install:
	env LOUTLIB=${PREFIX}/lib/lout \
		${PREFIX}/bin/lout -x -s ${PREFIX}/lib/lout/include/init

.include <bsd.port.mk>
