# $OpenBSD: Makefile,v 1.2 2001/03/24 12:51:55 reinhard Exp $

COMMENT=	'programmable small perl irc client'

DISTNAME=	sirc-2.211
CATEGORIES=	net
NEED_VERSION=	1.363
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.iagora.com/~espel/sirc/

MAINTAINER=	Peter Valchev <pvalchev@home.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-patch:
	@sed s!PREFIX.SED!${PREFIX}!g ${FILESDIR}/sirc-script > \
	${WRKSRC}/sirc
	@sed s!PREFIX.SED!${PREFIX}!g ${WRKSRC}/dsirc > \
	${WRKSRC}/dsirc.sed
	@sed s!/usr/local/bin/perl!/usr/bin/perl! ${WRKSRC}/dsirc.sed > \
	${WRKSRC}/dsirc
	@gzip -d ${WRKSRC}/sirc.help.gz

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/ssfe.c -o ${WRKSRC}/ssfe -ltermcap

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/sirc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ssfe ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/dsirc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/sirc
	${INSTALL_DATA} ${WRKSRC}/sirc.help ${PREFIX}/share/sirc
	${INSTALL_DATA} ${WRKSRC}/n0thing.pl ${PREFIX}/share/sirc
	${INSTALL_MAN} ${WRKSRC}/ssfe.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/sirc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
