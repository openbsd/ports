# $OpenBSD: Makefile,v 1.12 2021/08/27 16:01:41 naddy Exp $

COMMENT=	Bible reading, browsing, and searching tool

DISTNAME=	bible-kjv_4.36
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	misc

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses readline

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/b/bible-kjv/}

WRKDIST=	${WRKDIR}/work

MAKE_FLAGS=	DEST=${PREFIX} \
		CFLAGS='${CFLAGS} -DDESTLIB=\"${PREFIX}/lib\"' \
		LDFLAGS='-lreadline -lcurses'

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-build:
	perl -i.bak -pe 's:/usr/lib:${PREFIX}/lib:g' ${WRKSRC}/bible.1
	cd ${WRKBUILD}; \
	    ${CC} ${CFLAGS} -o randverse ${WRKSRC}/debian/randverse.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bible ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/bible.data ${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/bible.data.conc ${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/bible.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/randverse ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/debian/randverse.1 ${PREFIX}/man/man1

NO_TEST=	Yes

.include <bsd.port.mk>
