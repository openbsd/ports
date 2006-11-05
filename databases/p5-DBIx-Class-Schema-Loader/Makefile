# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 11:12:15 espie Exp $

COMMENT= 	"dynamic definition of a DBIx::Class::Schema"

DISTNAME=	DBIx-Class-Schema-Loader-0.03008
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	databases perl5

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=DBIx/}

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		:p5-Universal-exports-<0.05|p5-Universal-require-*:devel/p5-Universal-exports \
		::textproc/p5-Lingua-EN-Inflect \
		::textproc/p5-Lingua-EN-Inflect-Number
REGRESS_DEPENDS=${RUN_DEPENDS} \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage \
		::databases/p5-DBD-SQLite

CONFIGURE_STYLE=perl modbuild
PKG_ARCH=	*

.include <bsd.port.mk>
