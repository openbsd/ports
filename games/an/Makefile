# $OpenBSD: Makefile,v 1.11 2002/10/26 20:44:38 naddy Exp $

COMMENT=	"fast anagram generator"

DISTNAME=	an-0.93
CATEGORIES=	games
MASTER_SITES=	ftp://suburbia.net/pub/rmj/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV=	DEFS=-DDEFDICT=\\\"/usr/share/dict/words\\\"
ALL_TARGET=	with-getopt

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/an ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/an.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
