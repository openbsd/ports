# $OpenBSD: Makefile,v 1.1.1.1 2000/07/03 03:42:55 turan Exp $ 

DISTNAME=	courier-imap-0.35
NEED_VERSION=	1.273
CATEGORIES=	mail
MASTER_SITES=	ftp://download.sourceforge.net/pub/sourceforge/courier/

MAINTAINER=	anil@recoil.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

SYSCONFDIR= /usr/local/share/courier-imap
GNU_CONFIGURE=	Yes

RUN_DEPENDS= stunnel::security/stunnel

.include <bsd.port.mk>
