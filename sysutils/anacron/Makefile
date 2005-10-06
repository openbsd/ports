# $OpenBSD: Makefile,v 1.7 2005/10/06 20:00:44 naddy Exp $

COMMENT=	"periodic command scheduler"

DISTNAME=	anacron-2.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	sysutils

HOMEPAGE=	http://sourceforge.net/projects/anacron/

MAINTAINER=	Andreas Kahari <andreas.kahari@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=	    ${MASTER_SITE_SOURCEFORGE:=anacron/}

USE_GMAKE=	    Yes

MAKE_FLAGS=	    ANACRONTAB="${SYSCONFDIR}/anacrontab"

post-extract:
	cp ${FILESDIR}/obstack.h ${WRKSRC}
	cp ${FILESDIR}/obstack.c ${WRKSRC}

pre-install:
	perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${WRKSRC}/anacron.8 \
		${WRKSRC}/anacrontab.5

.include <bsd.port.mk>
