# $OpenBSD: Makefile,v 1.12 2012/11/20 15:14:41 giovanni Exp $

COMMENT=	periodic command scheduler

DISTNAME=	anacron-2.3
REVISION =	3
CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/anacron/

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	    ${MASTER_SITE_SOURCEFORGE:=anacron/}

USE_GMAKE=	    Yes

NO_REGRESS =	Yes

MAKE_FLAGS=	    ANACRONTAB="${SYSCONFDIR}/anacrontab"

post-extract:
	cp ${FILESDIR}/obstack.h ${WRKSRC}
	cp ${FILESDIR}/obstack.c ${WRKSRC}

pre-install:
	perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/anacron.8 \
		${WRKSRC}/anacrontab.5

.include <bsd.port.mk>
