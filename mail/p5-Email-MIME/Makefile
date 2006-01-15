# $OpenBSD: Makefile,v 1.1.1.1 2006/01/15 15:56:40 sturm Exp $

COMMENT=	"handle MIME messages"

DISTNAME=	Email-MIME-1.82
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
RUN_DEPENDS=	::mail/p5-Email-MIME-ContentType \
		::mail/p5-Email-MIME-Encodings \
		::mail/p5-Email-Simple \
		::mail/p5-MIME-Types

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
