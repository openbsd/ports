# $OpenBSD: Makefile,v 1.9 2001/05/10 22:11:30 naddy Exp $

COMMENT=	"library for WWW access in Perl"

DISTNAME=	libwww-perl-5.53
PKGNAME=	p5-libwww-5.53
CATEGORIES=	www perl5
NEED_VERSION=	1.391
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= LWP

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=  ${PERL_MODULES}/URI.pm::www/p5-URI \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/HTML/Entities.pm::www/p5-HTML-Parser \
		${PERL_MODULES}/Net/Cmd.pm::net/p5-libnet \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/MD5.pm::security/p5-Digest-MD5 \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/Crypt/SSLeay.pm::security/p5-Crypt-SSLeay \
		${PERL_MODULES}/${MACHINE_ARCH}-openbsd/HTTP/GHTTP.pm::www/p5-HTTP-GHTTP
RUN_DEPENDS=    ${BUILD_DEPENDS}

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
