# $OpenBSD: Makefile,v 1.3 2000/10/22 18:03:31 espie Exp $

DISTNAME=	wmbiff-0.2
CATEGORIES=	mail
NEED_VERSION=	0.313
MASTER_SITES=	http://ccat.elect.ru:8100/wmbiff/

MAINTAINER=	Cameron Lerch <opcode@skylab.2y.net>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WRKBUILD=	${WRKSRC}/wmbiff

post-install:
	
	@${ECHO_MSG} "===>  Installing sample.wmbiffrc to ${PREFIX}/share/examples/wmbiff"
	@${ECHO_MSG} "===>  Modify it to suit your needs and copy to ~/.wmbiffrc"
	@/bin/mkdir ${PREFIX}/share/examples/wmbiff && ${CHMOD} a+rx ${PREFIX}/share/examples/wmbiff
	@${INSTALL_DATA} ${WRKBUILD}/sample.wmbiffrc ${PREFIX}/share/examples/wmbiff
	@${CHMOD} 644 ${PREFIX}/share/examples/wmbiff/sample.wmbiffrc

.include <bsd.port.mk>
