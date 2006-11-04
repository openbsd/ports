# $OpenBSD: Makefile,v 1.1.1.1 2006/11/04 13:54:35 espie Exp $

COMMENT=	"turn search paths into subclasses/plugins"

DISTNAME=	Module-Pluggable-3.1
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Module/}

RUN_DEPENDS=	::devel/p5-Class-Inspector
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl

PKG_ARCH=	*

.include <bsd.port.mk>
