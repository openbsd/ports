# $OpenBSD: Makefile,v 1.6 2002/03/21 21:25:52 espie Exp $

COMMENT=	"copy stdin to a qmail-style maildir"

DISTNAME=	safecat-1.8
CATEGORIES=	sysutils
NEED_VERSION=	1.515
MASTER_SITES=	http://www.nb.net/~lbudney/linux/software/safecat/ \
		http://sunsite.unc.edu/pub/Linux/utils/file/

HOMEPAGE=	http://www.nb.net/~lbudney/linux/software/safecat.html

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

ALL_TARGET=
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/safecat ${PREFIX}/bin/safecat
	${INSTALL_SCRIPT} ${WRKSRC}/maildir ${PREFIX}/bin/maildir
	${INSTALL_MAN} ${WRKSRC}/safecat.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/maildir.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
