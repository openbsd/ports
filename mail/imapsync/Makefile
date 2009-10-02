# $OpenBSD: Makefile,v 1.6 2009/10/02 14:32:06 pea Exp $

COMMENT=	IMAP synchronization tool

DISTNAME=	imapsync-1.286
CATEGORIES=	mail

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.linux-france.org/prj/imapsync/dist/

EXTRACT_SUFX=	.tgz

RUN_DEPENDS=	::converters/p5-DateManip \
		::security/p5-IO-Socket-SSL \
		::security/p5-Digest-HMAC \
		::mail/p5-Mail-IMAPClient \
		::devel/p5-Term-ReadKey

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	/usr/bin/pod2man ${WRKSRC}/imapsync ${WRKSRC}/imapsync.1
	${INSTALL_SCRIPT} ${WRKSRC}/imapsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imapsync.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
