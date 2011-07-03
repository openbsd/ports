# $OpenBSD: Makefile,v 1.18 2011/07/03 22:38:12 naddy Exp $

COMMENT=	copy stdin to a qmail-style maildir

REVISION=	0
DISTNAME=	safecat-1.13
CATEGORIES=	sysutils
MASTER_SITES=	http://jeenyus.net/linux/software/safecat/ \
		http://sunsite.unc.edu/pub/Linux/utils/file/

HOMEPAGE=	http://jeenyus.net/linux/software/safecat.html

MAINTAINER=	Armin Wolfermann <armin@wolfermann.org>

# BSD+DJB
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

ALL_TARGET=	maildir safecat
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/safecat ${PREFIX}/bin/safecat
	${INSTALL_SCRIPT} ${WRKSRC}/maildir ${PREFIX}/bin/maildir
	${INSTALL_MAN} ${WRKSRC}/safecat.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/maildir.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
