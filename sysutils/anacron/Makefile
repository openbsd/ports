# $OpenBSD: Makefile,v 1.2 2003/08/27 07:25:35 sturm Exp $

COMMENT=	"periodic command scheduler"

DISTNAME=	anacron-2.3
CATEGORIES=	sysutils

HOMEPAGE=	http://anacron.sourceforge.net/

MAINTAINER=	Andreas Kahari <andreas.kahari@unix.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
