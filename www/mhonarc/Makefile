# $OpenBSD: Makefile,v 1.1.1.1 2000/10/09 00:04:57 avsm Exp $

DISTNAME=		MHonArc2.4.6
PKGNAME=		mhonarc-2.4.6
CATEGORIES=     	www mail
NEED_VERSION=		1.338

HOMEPAGE=		http://www.mhonarc.org/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.mhonarc.org/tar/ \
			http://www.oac.uci.edu/indiv/ehood/tar/ \
			ftp://ftp.plig.org/pub/CPAN/authors/id/EHOOD/ 

PERL_MODULES=		${LOCALBASE}/libdata/perl5/site_perl
BUILD_DEPENDS=		${PERL_MODULES}/${ARCH}-openbsd/MD5.pm::security/p5-Digest-MD5
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl
ALL_TARGET=		default

.include <bsd.port.mk>
