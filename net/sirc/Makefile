# $OpenBSD: Makefile,v 1.14 2013/10/11 23:50:33 naddy Exp $

COMMENT=	programmable small perl irc client

DISTNAME=	sirc-2.211
CATEGORIES=	net

MASTER_SITES=	http://www.iagora.com/~espel/sirc/
MASTER_SITES0=	http://www.iagora.com/~espel/sirc/scripts/

PATCHFILES=	ssfe.diff:0

HOMEPAGE=	http://www.iagora.com/~espel/sirc/sirc.html

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c termcap 

pre-configure:
	@sed s!PREFIX.SED!${PREFIX}!g ${FILESDIR}/sirc-script > \
	${WRKSRC}/sirc
	@sed s!PREFIX.SED!${PREFIX}!g ${WRKSRC}/dsirc > \
	${WRKSRC}/dsirc.sed
	@sed s!/usr/local/bin/perl!/usr/bin/perl! ${WRKSRC}/dsirc.sed > \
	${WRKSRC}/dsirc
	@gzip -d ${WRKSRC}/sirc.help.gz

do-build:
	${CC} ${CFLAGS} ${WRKSRC}/ssfe.c -o ${WRKSRC}/ssfe -ltermcap

NO_TEST=	Yes

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
