# $OpenBSD: Makefile,v 1.2 2001/05/10 22:11:28 naddy Exp $

COMMENT=	"cryptographic cipher block chaining mode"

VERSION=	1.25
DISTNAME=	Crypt-CBC-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5
NEED_VERSION=	1.362
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Crypt

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/MD5.pm::security/p5-Digest-MD5
RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/MD5.pm::security/p5-Digest-MD5

MAINTAINER=	Dan Harnett <danh@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>	
