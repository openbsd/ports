# $OpenBSD: Makefile,v 1.17 2011/05/20 19:31:59 gsoares Exp $

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

ALL_TARGET=
USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/safecat ${PREFIX}/bin/safecat
	${INSTALL_SCRIPT} ${WRKSRC}/maildir ${PREFIX}/bin/maildir
	${INSTALL_MAN} ${WRKSRC}/safecat.0 ${PREFIX}/man/cat1/
	${INSTALL_MAN} ${WRKSRC}/maildir.0 ${PREFIX}/man/cat1/

.include <bsd.port.mk>
