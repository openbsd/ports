# $OpenBSD: Makefile,v 1.14 2002/03/15 09:47:08 reinhard Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

COMMENT=	"addressbook program with mutt support"

DISTNAME=	abook-0.4.16
CATEGORIES=	mail
NEED_VERSION=	1.510
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=abook

HOMEPAGE=	http://abook.sourceforge.net

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

WHITELIST=README abook2whitelist.sh mutt.whitelist whitelist.rc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abook/whitelist
	${INSTALL_DATA} ${WRKSRC}/contrib/mail2abook.py ${PREFIX}/share/examples/abook
	${INSTALL_DATA} ${WRKSRC}/contrib/vcard2abook.pl ${PREFIX}/share/examples/abook
	cd ${WRKSRC}/contrib/whitelist && ${INSTALL_DATA} ${WHITELIST} ${PREFIX}/share/examples/abook/whitelist

.include <bsd.port.mk>
