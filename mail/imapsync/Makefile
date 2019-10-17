# $OpenBSD: Makefile,v 1.19 2019/10/17 20:15:55 sthen Exp $

GH_ACCOUNT=	imapsync
GH_PROJECT=	imapsync
GH_TAGNAME=	imapsync-1.727
DISTNAME=	${GH_TAGNAME}

COMMENT=	IMAP synchronization tool

CATEGORIES=	mail

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# "NO LIMIT PUBLIC LICENSE"; see ./LICENSE
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-DateManip \
		security/p5-IO-Socket-SSL \
		security/p5-Digest-HMAC \
		mail/p5-Mail-IMAPClient \
		net/p5-IO-Socket-INET6 \
		security/p5-IO-Socket-SSL \
		devel/p5-IO-Tee \
		converters/p5-Unicode-String \
		www/p5-URI \
		security/p5-Authen-NTLM \
		devel/p5-File-Copy-Recursive \
		devel/p5-Parse-RecDescent \
		devel/p5-Test-Pod \
		devel/p5-Data-Uniqid \
		devel/p5-Readonly

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	/usr/bin/pod2man ${WRKSRC}/imapsync ${WRKSRC}/imapsync.1
	${INSTALL_SCRIPT} ${WRKSRC}/imapsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imapsync.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
