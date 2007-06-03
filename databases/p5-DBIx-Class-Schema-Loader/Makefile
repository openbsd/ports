# $OpenBSD: Makefile,v 1.8 2007/06/03 16:15:57 simon Exp $

COMMENT= 	"dynamic definition of a DBIx::Class::Schema"

MODULES=	cpan
DISTNAME=	DBIx-Class-Schema-Loader-0.03012
CATEGORIES=	databases

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		:p5-Universal-exports-<0.05|p5-Universal-require-*:devel/p5-Universal-require \
		::textproc/p5-Lingua-EN-Inflect \
		::textproc/p5-Lingua-EN-Inflect-Number
REGRESS_DEPENDS=::databases/p5-DBD-SQLite

CONFIGURE_STYLE=modbuild
MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
