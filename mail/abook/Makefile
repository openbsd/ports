# $OpenBSD: Makefile,v 1.18 2003/10/17 19:02:15 naddy Exp $

COMMENT=	"addressbook program with mutt support"

DISTNAME=	abook-0.5.0
CATEGORIES=	mail

HOMEPAGE=	http://abook.sourceforge.net

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=abook/}

CONFIGURE_STYLE=gnu

WHITELIST=README abook2whitelist.sh mutt.whitelist whitelist.rc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/abook/whitelist
	${INSTALL_DATA} ${WRKSRC}/contrib/mail2abook.py \
		${PREFIX}/share/examples/abook
	${INSTALL_DATA} ${WRKSRC}/contrib/vcard2abook.pl \
		${PREFIX}/share/examples/abook
	cd ${WRKSRC}/contrib/whitelist && \
		${INSTALL_DATA} ${WHITELIST} \
			${PREFIX}/share/examples/abook/whitelist

.include <bsd.port.mk>
