# $OpenBSD: Makefile,v 1.11 2001/03/23 16:30:16 reinhard Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

COMMENT=	'addressbook program with mutt support'

DISTNAME=	abook-0.4.12
CATEGORIES=	mail
NEED_VERSION=	1.363
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=abook

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
