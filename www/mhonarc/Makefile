# $OpenBSD: Makefile,v 1.7 2002/03/21 21:25:54 espie Exp $

COMMENT=		"highly customizable e-mail to HTML converter"

DISTNAME=		MHonArc2.4.9
PKGNAME=		mhonarc-2.4.9
CATEGORIES=     	www mail
NEED_VERSION=		1.515

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
BUILD_DEPENDS=		::security/p5-Digest-MD5
RUN_DEPENDS=		${BUILD_DEPENDS}

post-extract:
			@chmod -R u+w ${WRKDIST}

CONFIGURE_STYLE=	perl
ALL_TARGET=		default

.include <bsd.port.mk>
