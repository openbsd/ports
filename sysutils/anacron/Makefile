# $OpenBSD: Makefile,v 1.15 2013/06/04 13:47:09 giovanni Exp $

COMMENT=	periodic command scheduler

V=		2.5.3
DISTNAME=	anacron.$V
PKGNAME=	anacron-$V
CATEGORIES=	sysutils

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=anacron2/}

USE_GMAKE=	Yes

NO_TEST =	Yes

MAKE_FLAGS=	ANACRONTAB="${SYSCONFDIR}/anacrontab"
WRKDIST=	${WRKDIR}/anacron-$V

post-extract:
	rm ${WRKSRC}/*.o
	cp ${FILESDIR}/obstack.h ${WRKSRC}
	cp ${FILESDIR}/obstack.c ${WRKSRC}

pre-install:
	perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/anacron.8 \
		${WRKSRC}/anacrontab.5

.include <bsd.port.mk>
