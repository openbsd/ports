# $OpenBSD: Makefile,v 1.4 2004/11/24 00:11:03 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		"provide an interface to create pseudo ttys"

DISTNAME=		IO-Tty-1.02
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

MAINTAINER=		Michael Lestinsky <michael@lestinsky.de>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		util

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=IO/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
