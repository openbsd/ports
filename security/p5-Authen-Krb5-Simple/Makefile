# $OpenBSD: Makefile,v 1.2 2004/12/27 13:28:34 alek Exp $

COMMENT=		"Perl module to authenticate against a Kerberos server"

DISTNAME=		Authen-Krb5-Simple-0.31
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		security perl5

MAINTAINER=		Stephen Kirkham <sk@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		com_err crypto krb5

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Authen/}

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
