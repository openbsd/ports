# $OpenBSD: Makefile,v 1.28 2014/06/14 10:34:45 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		agent for Razor spam filtering networks

DISTNAME=		razor-agents-2.85
REVISION=		1
CATEGORIES=		mail
HOMEPAGE=		http://razor.sourceforge.net/
MAINTAINER=		Michael Erdely <merdely@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=razor/}
EXTRACT_SUFX=		.tar.bz2

RUN_DEPENDS=		security/p5-Digest-SHA1>=1.0 \
			net/p5-Net-DNS>=0.23 \
			www/p5-URI>=1.19
BUILD_DEPENDS=		${RUN_DEPENDS}

FAKE_FLAGS=		PERL5LIB=${WRKINST}/${PREFIX}/${P5ARCH}

CONFIGURE_STYLE= 	perl
USE_GROFF =		Yes

.include <bsd.port.mk>
