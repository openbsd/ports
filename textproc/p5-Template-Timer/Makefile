# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 09:40:03 espie Exp $

COMMENT= 	"rudimentary profiling module for Template Toolkit"

DISTNAME=	Template-Timer-0.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Template/}

RUN_DEPENDS=	::textproc/p5-Template
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
