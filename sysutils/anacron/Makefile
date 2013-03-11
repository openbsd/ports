# $OpenBSD: Makefile,v 1.14 2013/03/11 11:41:29 espie Exp $

COMMENT=	periodic command scheduler

DISTNAME=	anacron-2.3
REVISION =	4
CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/anacron/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

MASTER_SITES=	    ${MASTER_SITE_SOURCEFORGE:=anacron/}

USE_GMAKE=	    Yes

NO_TEST =	Yes

MAKE_FLAGS=	    ANACRONTAB="${SYSCONFDIR}/anacrontab"

post-extract:
	cp ${FILESDIR}/obstack.h ${WRKSRC}
	cp ${FILESDIR}/obstack.c ${WRKSRC}

pre-install:
	perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/anacron.8 \
		${WRKSRC}/anacrontab.5

.include <bsd.port.mk>
