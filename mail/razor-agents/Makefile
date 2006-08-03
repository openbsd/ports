# $OpenBSD: Makefile,v 1.16 2006/08/03 15:18:40 steven Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=		"agent for Razor spam filtering networks"

DISTNAME=		razor-agents-2.82
CATEGORIES=		mail
HOMEPAGE=		http://razor.sourceforge.net/

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=razor/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		:p5-Digest-SHA1->=1.0:security/p5-Digest-SHA1 \
			:p5-Net-DNS->=0.23:net/p5-Net-DNS \
			:p5-URI->=1.19:www/p5-URI
BUILD_DEPENDS=		${RUN_DEPENDS}

FAKE_FLAGS=		${DESTDIRNAME}=${WRKINST} PERL5LIB=${WRKINST}/${PREFIX}/${P5ARCH}

CONFIGURE_STYLE= 	perl

.include <bsd.port.mk>
