# $OpenBSD: Makefile,v 1.9 2000/12/31 10:37:16 reinhard Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

DISTNAME=	abook-0.4.11
CATEGORIES=	mail
NEED_VERSION=	1.348
MASTER_SITES=	ftp://abook.sourceforge.net/pub/abook/

HOMEPAGE=	http://abook.sourceforge.net

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abook
	${INSTALL_DATA} ${WRKSRC}/contrib/mail2abook.py ${PREFIX}/share/examples/abook
	${INSTALL_DATA} ${WRKSRC}/contrib/vcard2abook.pl ${PREFIX}/share/examples/abook
	@strip ${PREFIX}/bin/abook

.include <bsd.port.mk>
