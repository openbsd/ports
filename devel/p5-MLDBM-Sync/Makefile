# $OpenBSD: Makefile,v 1.4 2002/06/09 05:31:40 wilfried Exp $

COMMENT=	"safe concurrent access to MLDBM databases"

VERSION=	0.25
DISTNAME=	MLDBM-Sync-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
NEED_VERSION=	1.515

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MLDBM/}

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

BUILD_DEPENDS=	:p5-MLDBM-*:devel/p5-MLDBM \
		:p5-Digest-MD5-*:security/p5-Digest-MD5
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
