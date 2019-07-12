# $OpenBSD: Makefile,v 1.8 2019/07/12 20:47:20 sthen Exp $

COMMENT =		new brainfuck compiler

DISTNAME =		nbfc-0.1
REVISION =		1

CATEGORIES =		lang

HOMEPAGE =		http://koeln.ccc.de/ablage/brainfuck/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =		${HOMEPAGE}

NO_TEST =		Yes

SUBST_VARS +=		CC CFLAGS

post-patch:
	@perl -pi -e 's,bison -y,yacc -,g;' \
		-e 's,gcc,\$${CC} \$${CFLAGS},g' ${WRKSRC}/Makefile

pre-configure:
	${SUBST_CMD} ${WRKSRC}/config.h

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nbfc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nbfc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
