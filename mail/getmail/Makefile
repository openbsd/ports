# $OpenBSD: Makefile,v 1.61 2009/03/26 11:50:09 jasper Exp $

COMMENT=	IMAP/POP3/SDPS mail retriever

V=		4.8.4
DISTNAME=	getmail-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail

HOMEPAGE=	http://pyropus.ca/software/getmail/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}old-versions/

MODULES=	lang/python

NO_REGRESS=	Yes

SUBST_VARS=	V
EXDIR=		${PREFIX}/share/examples/getmail

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	${INSTALL_DATA} ${WRKDIST}/docs/getmailrc-examples ${EXDIR}

.include <bsd.port.mk>
