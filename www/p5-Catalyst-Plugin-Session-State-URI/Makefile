# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 16:40:39 espie Exp $

COMMENT= 	"catalyst session IDs as URI extensions"

DISTNAME=	Catalyst-Plugin-Session-State-URI-0.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::mail/p5-MIME-Types \
		::www/p5-HTML-TokeParser-Simple \
		::www/p5-URI \
		::www/p5-Catalyst-Plugin-Session \
		::www/p5-URI-Find
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-MockObject \
		::www/p5-Catalyst-Plugin-Session-State-Cookie \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl
PKG_ARCH=	*

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
