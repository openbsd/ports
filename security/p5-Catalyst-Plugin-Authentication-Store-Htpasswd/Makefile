# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 13:27:12 espie Exp $

COMMENT= 	"catalyst authentication via .htpasswd"

DISTNAME=	Catalyst-Plugin-Authentication-Store-Htpasswd-0.02
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::security/p5-Authen-Htpasswd \
		::security/p5-Catalyst-Plugin-Authentication
REGRESS_DEPENDS=${RUN_DEPENDS}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
