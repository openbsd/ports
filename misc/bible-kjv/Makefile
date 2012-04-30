# $OpenBSD: Makefile,v 1.2 2012/04/30 19:22:08 jasper Exp $

COMMENT=	Bible reading, browsing, and searching tool

DISTNAME=	bible-kjv_4.26
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	misc

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c curses readline

MASTER_SITES=	${MASTER_SITE_DEBIAN:=main/b/bible-kjv/}

WRKDIST=	${WRKDIR}/bible-kjv

MAKE_FLAGS=	DEST=${PREFIX} \
		CFLAGS='${CFLAGS} -DDESTLIB=\"${PREFIX}/lib\"' \
		LDFLAGS='-lreadline -lcurses'

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

NO_REGRESS=	Yes

.include <bsd.port.mk>
