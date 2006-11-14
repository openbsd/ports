# $OpenBSD: Makefile,v 1.2 2006/11/14 10:22:12 espie Exp $

COMMENT= 	"per-user session for catalyst"

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-Session-PerUser-0.03
CATEGORIES=	www

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/p5-Catalyst-Plugin-Session \
		::devel/p5-Hash-Merge

REGRESS_DEPENDS=::devel/p5-Test-WWW-Mechanize-Catalyst

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
