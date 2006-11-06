# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 13:39:03 espie Exp $

COMMENT= 	"catalyst file storage backend for session data"

DISTNAME=	Catalyst-Plugin-Session-Store-File-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

RUN_DEPENDS=	::devel/p5-Cache-Cache \
		::www/p5-Catalyst-Plugin-Session
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

MAKE_ENV=	TEST_POD=Yes

post-patch:
		cd ${WRKDIST} && ln -sf Build.pl Build.PL

CONFIGURE_STYLE=perl modbuild

PKG_ARCH=	*

.include <bsd.port.mk>
