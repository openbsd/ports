# $OpenBSD: Makefile,v 1.7 2002/09/30 03:10:46 marcm Exp $

COMMENT=		"agent for Razor spam filtering networks"

DISTNAME=		razor-agents-2.14
CATEGORIES=		mail
HOMEPAGE=		http://razor.sourceforge.net/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=razor/}

BUILD_DEPENDS=		:p5-Digest-Nilsimsa->=0.06:security/p5-Digest-Nilsimsa \
			:p5-Net-DNS->=0.23:net/p5-Net-DNS \
			:p5-Test-Simple->=0.44:devel/p5-Test-Simple \
			:p5-Time-HiRes->=1.20:devel/p5-Time-HiRes \
			:p5-URI->=1.19:www/p5-URI
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE= 	perl

post-install:
	@ln -s razor-client ${PREFIX}/bin/razor-check
	@ln -s razor-client ${PREFIX}/bin/razor-report
	@ln -s razor-client ${PREFIX}/bin/razor-revoke
	@ln -s razor-client ${PREFIX}/bin/razor-admin

.include <bsd.port.mk>
