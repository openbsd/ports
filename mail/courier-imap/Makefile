# $OpenBSD: Makefile,v 1.1.1.2 2000/07/03 08:11:24 kevlo Exp $ 

DISTNAME=	courier-imap-0.35
CATEGORIES=	mail
NEED_VERSION=	1.311
MASTER_SITES=	ftp://download.sourceforge.net/pub/sourceforge/courier/

MAINTAINER=	anil@recoil.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS= 	stunnel::security/stunnel

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--sysconfdir=${PREFIX}/share/courier-imap

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/courier-imap
	${INSTALL_DATA} ${WRKSRC}/imapd-ssl.config ${PREFIX}/share/courier-imap
	${INSTALL_DATA} ${WRKSRC}/imapd.config ${PREFIX}/share/courier-imap

.include <bsd.port.mk>
