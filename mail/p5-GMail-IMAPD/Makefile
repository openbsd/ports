# $OpenBSD: Makefile,v 1.11 2019/07/12 20:47:33 sthen Exp $

COMMENT=		imap4 gateway to Google webmail service

DISTNAME=		GMail-IMAPD-0.94
REVISION=		2
CATEGORIES=		mail

MAINTAINER=		Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		mail/p5-Mail-Webmail-Gmail
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
