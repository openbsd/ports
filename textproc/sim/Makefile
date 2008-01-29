# $OpenBSD: Makefile,v 1.1.1.1 2008/01/29 10:45:38 laurent Exp $

COMMENT=		tests lexical similarity in texts

DISTNAME=               sim_2_21
PKGNAME=                sim-2.21
CATEGORIES=		textproc

HOMEPAGE=		http://www.cs.vu.nl/~dick/sim.html

MAINTAINER=     	Laurent Fanis <laurent@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=                c

EXTRACT_SUFX=		.shar
MASTER_SITES=		http://humppa.nl/distfiles/

MAKE_FLAGS=		CC=${CC} CFLAGS="${CFLAGS} -DUNIX" LDFLAGS="${LDFLAGS}"

WRKDIST=        	${WRKDIR}

NO_REGRESS=     	Yes

pre-patch:
	find ${WRKSRC} -name '*.[ch]'|xargs fgrep -l malloc.h| \
        while read i; do \
                sed -e 's/malloc.h/stdlib.h/' $$i >$$i.bak && mv $$i.bak $$i; \
        done

do-install:
		${INSTALL_PROGRAM} ${WRKSRC}/sim_* ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/sim.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
