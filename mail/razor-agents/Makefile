# $OpenBSD: Makefile,v 1.10 2003/05/24 21:57:32 marcm Exp $

COMMENT=		"agent for Razor spam filtering networks"

DISTNAME=		razor-agents-2.34
CATEGORIES=		mail
HOMEPAGE=		http://razor.sourceforge.net/

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=razor/}

BUILD_DEPENDS=		:p5-Digest-Nilsimsa->=0.06:security/p5-Digest-Nilsimsa \
			:p5-Net-DNS->=0.23:net/p5-Net-DNS \
			:p5-URI->=1.19:www/p5-URI
RUN_DEPENDS=		${BUILD_DEPENDS}

FAKE_FLAGS=		PERL5LIB=${WRKINST}/${PREFIX}/${P5ARCH}

CONFIGURE_STYLE= 	perl

post-install:
	@ln -s razor-client ${PREFIX}/bin/razor-check
	@ln -s razor-client ${PREFIX}/bin/razor-report
	@ln -s razor-client ${PREFIX}/bin/razor-revoke
	@ln -s razor-client ${PREFIX}/bin/razor-admin
	${INSTALL_MAN} ${WRKSRC}/blib/man5/*.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
