# $OpenBSD: Makefile,v 1.8 2002/09/12 16:41:26 danh Exp $

COMMENT=	"copy stdin to a qmail-style maildir"

DISTNAME=	safecat-1.9
CATEGORIES=	sysutils
MASTER_SITES=	http://www.nb.net/~lbudney/linux/software/safecat/ \
		http://sunsite.unc.edu/pub/Linux/utils/file/

HOMEPAGE=	http://www.pobox.com/~lbudney/linux/software/safecat.html

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
	${INSTALL_MAN} ${WRKSRC}/safecat.0 ${PREFIX}/man/cat1/
	${INSTALL_MAN} ${WRKSRC}/maildir.0 ${PREFIX}/man/cat1/

.include <bsd.port.mk>
