# $OpenBSD: Makefile,v 1.20 2004/03/02 22:15:20 xsa Exp $

COMMENT=	"addressbook program with mutt support"

DISTNAME=	abook-0.5.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail

HOMEPAGE=	http://abook.sourceforge.net/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=abook/}

CONFIGURE_STYLE=gnu

EXAMPLESDIR=	${PREFIX}/share/examples/abook
WHITELIST=README abook2whitelist.sh mutt.whitelist whitelist.rc

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}/whitelist
	${INSTALL_DATA} ${WRKSRC}/contrib/mail2abook.py ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/contrib/vcard2abook.pl ${EXAMPLESDIR}
	cd ${WRKSRC}/contrib/whitelist && \
		${INSTALL_DATA} ${WHITELIST} ${EXAMPLESDIR}/whitelist
	${INSTALL_DATA} ${WRKSRC}/sample.abookrc ${EXAMPLESDIR}

.include <bsd.port.mk>
