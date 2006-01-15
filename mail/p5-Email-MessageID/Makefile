# $OpenBSD: Makefile,v 1.1.1.1 2006/01/15 15:43:24 sturm Exp $

COMMENT=	"generate world unique message-ids"

DISTNAME=	Email-MessageID-1.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Email/}

CONFIGURE_STYLE=perl

REGRESS_DEPENDS=${RUN_DEPENDS}
RUN_DEPENDS=	::mail/p5-Email-Address

PKG_ARCH=	*

.include <bsd.port.mk>
