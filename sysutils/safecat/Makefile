# $OpenBSD: Makefile,v 1.15 2008/07/02 17:58:47 ajacoutot Exp $

COMMENT=	copy stdin to a qmail-style maildir

DISTNAME=	safecat-1.13
CATEGORIES=	sysutils
MASTER_SITES=	http://jeenyus.net/~budney/linux/software/safecat/ \
		http://sunsite.unc.edu/pub/Linux/utils/file/

HOMEPAGE=	http://jeenyus.net/~budney/linux/software/safecat.html

MAINTAINER=	Armin Wolfermann <armin@wolfermann.org>

# BSD+DJB
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c 

ALL_TARGET=
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/safecat ${PREFIX}/bin/safecat
	${INSTALL_SCRIPT} ${WRKSRC}/maildir ${PREFIX}/bin/maildir
	${INSTALL_MAN} ${WRKSRC}/safecat.0 ${PREFIX}/man/cat1/
	${INSTALL_MAN} ${WRKSRC}/maildir.0 ${PREFIX}/man/cat1/

.include <bsd.port.mk>
