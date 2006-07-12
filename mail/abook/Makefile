# $OpenBSD: Makefile,v 1.23 2006/07/12 14:24:49 steven Exp $

COMMENT=	"addressbook program with mutt support"

DISTNAME=	abook-0.5.5
CATEGORIES=	mail

HOMEPAGE=	http://abook.sourceforge.net/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses readline

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=abook/}

MODULES=	devel/gettext

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
