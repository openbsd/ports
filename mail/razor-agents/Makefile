# $OpenBSD: Makefile,v 1.13 2004/04/24 08:10:22 peter Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=		"agent for Razor spam filtering networks"

DISTNAME=		razor-agents-2.40
CATEGORIES=		mail
HOMEPAGE=		http://razor.sourceforge.net/

MAINTAINER=     Peter Galbavy <peter.galbavy@knowtion.net>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=razor/}

BUILD_DEPENDS=		:p5-Digest-SHA1->=1.0:security/p5-Digest-SHA1 \
			:p5-Net-DNS->=0.23:net/p5-Net-DNS \
			:p5-URI->=1.19:www/p5-URI
RUN_DEPENDS=		${BUILD_DEPENDS}

FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} PERL5LIB=${WRKINST}/${PREFIX}/${P5ARCH}

CONFIGURE_STYLE= 	perl

post-install:
	@ln -s razor-client ${PREFIX}/bin/razor-check
	@ln -s razor-client ${PREFIX}/bin/razor-report
	@ln -s razor-client ${PREFIX}/bin/razor-revoke
	@ln -s razor-client ${PREFIX}/bin/razor-admin
	${INSTALL_MAN} ${WRKSRC}/blib/man5/*.5 ${PREFIX}/man/man5

.include <bsd.port.mk>
