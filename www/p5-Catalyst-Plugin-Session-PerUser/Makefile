# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 16:11:31 espie Exp $

COMMENT= 	"per-user session for catalyst"

DISTNAME=	Catalyst-Plugin-Session-PerUser-0.03
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::www/p5-Catalyst-Plugin-Session \
		::devel/p5-Hash-Merge

REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-WWW-Mechanize-Catalyst

CONFIGURE_STYLE=perl modbuild
PKG_ARCH=	*

.include <bsd.port.mk>
