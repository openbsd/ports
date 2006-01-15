# $OpenBSD: Makefile,v 1.1.1.1 2006/01/15 16:02:30 sturm Exp $

COMMENT=	"easily modify MIME objects"

DISTNAME=	Email-MIME-Modifier-1.42
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	mail perl5

MAINTAINER=	Sam Smith <s@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Email/}

REGRESS_DEPENDS=${RUN_DEPENDS}
RUN_DEPENDS=	::mail/p5-Email-MIME \
		::mail/p5-Email-MessageID

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
