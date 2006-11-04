# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 14:43:11 espie Exp $

COMMENT=        "generic configuration parser, inspired by apache"

DISTNAME=	Config-General-2.31
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     devel perl5
HOMEPAGE=	http://www.daemon.de/config-general/

# Same as perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

# the 2.31 tarball includes an extra copy of Extended,
# which is probably not intentional.
post-extract:
	rm ${WRKSRC}/Extended.pm

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Config/}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
