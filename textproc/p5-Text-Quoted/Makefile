# $OpenBSD: Makefile,v 1.7 2010/10/19 07:54:24 espie Exp $

COMMENT=		extract the structure of a quoted mail message

MODULES=		cpan
DISTNAME=		Text-Quoted-2.06
CATEGORIES=		textproc
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::textproc/p5-Text-Autoformat

.include <bsd.port.mk>
