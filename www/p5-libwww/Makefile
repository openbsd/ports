# $OpenBSD: Makefile,v 1.4 2001/03/17 00:42:06 avsm Exp $

DISTNAME=	libwww-perl-5.51
PKGNAME=	p5-libwww-5.50
CATEGORIES=	www perl5
NEED_VERSION=	1.348
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= LWP

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ${PERL_MODULES}/URI.pm::www/p5-URI \
		${PERL_MODULES}/${ARCH}-openbsd/HTML/Entities.pm::www/p5-HTML-Parser \
		${PERL_MODULES}/Net/Cmd.pm::net/p5-libnet \
		${PERL_MODULES}/${ARCH}-openbsd/MD5.pm::security/p5-Digest-MD5 \
		${PERL_MODULES}/${ARCH}-openbsd/Crypt/SSLeay.pm::security/p5-Crypt-SSLeay
RUN_DEPENDS=    ${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
