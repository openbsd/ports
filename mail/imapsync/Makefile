# $OpenBSD: Makefile,v 1.20 2019/11/01 01:15:24 sthen Exp $

GH_ACCOUNT=	imapsync
GH_PROJECT=	imapsync
GH_TAGNAME=	imapsync-1.945
DISTNAME=	${GH_TAGNAME}

COMMENT=	IMAP synchronization tool

CATEGORIES=	mail

MAINTAINER=	Pierre-Emmanuel Andre <pea@openbsd.org>

# "NO LIMIT PUBLIC LICENSE"; see ./LICENSE
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	converters/p5-DateManip \
		converters/p5-Unicode-String \
		devel/p5-Data-Uniqid \
		devel/p5-File-Copy-Recursive \
		devel/p5-File-Tail \
		devel/p5-IO-Tee \
		devel/p5-Parse-RecDescent \
		devel/p5-Readonly \
		devel/p5-Test-Pod \
		mail/p5-Mail-IMAPClient \
		net/p5-IO-Socket-INET6 \
		security/p5-Authen-NTLM \
		security/p5-Digest-HMAC \
		security/p5-IO-Socket-SSL \
		sysutils/p5-Sys-MemInfo \
		textproc/p5-Regexp-Common \
		www/p5-URI

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	/usr/bin/pod2man ${WRKSRC}/imapsync ${WRKSRC}/imapsync.1
	${INSTALL_SCRIPT} ${WRKSRC}/imapsync ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/imapsync.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
