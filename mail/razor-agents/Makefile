# $OpenBSD: Makefile,v 1.5 2002/09/19 06:42:00 marcm Exp $

COMMENT=		"agent for Razor spam filtering networks"

VERSION=		1.20
DISTNAME=		razor-agents-${VERSION}
CATEGORIES=		mail
HOMEPAGE=		http://razor.sourceforge.net/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=razor/}

# Uh, the razor SDK uses Mail-Tools 1.40... but it's not in the
# ports tree (yet)
BUILD_DEPENDS=		:p5-Net-DNS->=0.12:net/p5-Net-DNS \
			:p5-Time-HiRes->=1.20:devel/p5-Time-HiRes \
			:p5-Digest-SHA1->=2.00:security/p5-Digest-SHA1 \
			:p5-Mail-Tools->=1.15:mail/p5-Mail-Tools
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE= 	perl

.include <bsd.port.mk>
