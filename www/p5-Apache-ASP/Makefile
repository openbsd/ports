# $OpenBSD: Makefile,v 1.2 2002/05/15 17:58:50 espie Exp $

COMMENT=	"Apache ASP support"

VERSION=	2.31
DISTNAME=	Apache-ASP-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	::security/p5-Digest-MD5 \
		::devel/p5-MLDBM-Sync
RUN_DEPENDS=	$(BUILD_DEPENDS) \
		::www/mod_perl

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
