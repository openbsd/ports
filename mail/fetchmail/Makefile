# $OpenBSD: Makefile,v 1.107 2006/04/21 09:21:59 bernd Exp $

COMMENT=	"mail retrieval utility for POP2, POP3, KPOP, IMAP and more"

DISTNAME=	fetchmail-6.3.4
CATEGORIES=	mail
MASTER_SITES=	http://download2.berlios.de/fetchmail/

HOMEPAGE=	http://fetchmail.berlios.de/

MAINTAINER=	Bernd Ahlers <bernd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto krb5 ssl

MODULES=		devel/gettext

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-inet6 --with-ssl \
			--with-kerberos5 --enable-NTLM

EXTRACT_SUFX=		.tar.bz2

DOCS=			FAQ NOTES FEATURES README COPYING fetchmail-FAQ.html \
			fetchmail-features.html design-notes.html todo.html

pre-patch:
	@sed -e "s|@PREFIX@|${LOCALBASE}|" \
		${FILESDIR}/fetchmailconf > ${WRKDIR}/fetchmailconf
	@tbl ${WRKSRC}/fetchmail.man > ${WRKSRC}/fetchmail.tbl && \
		cp -f ${WRKSRC}/fetchmail.tbl ${WRKSRC}/fetchmail.man

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fetchmail
	@cd ${PREFIX}/man/man1 && ln -sf fetchmail.1 fetchmailconf.1
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/fetchmail
	${INSTALL_SCRIPT} ${WRKSRC}/fetchmailconf.py \
		${PREFIX}/libexec/fetchmailconf.bin
	${INSTALL_SCRIPT} ${WRKDIR}/fetchmailconf ${PREFIX}/bin

.include <bsd.port.mk>
