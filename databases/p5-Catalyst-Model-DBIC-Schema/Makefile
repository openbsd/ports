# $OpenBSD: Makefile,v 1.18 2020/07/03 21:44:34 sthen Exp $

COMMENT=	model class for catalyst

DISTNAME=	Catalyst-Model-DBIC-Schema-0.59
CATEGORIES=	databases
MODULES=	cpan
PKG_ARCH=	*
REVISION=	1

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Carp-Clan \
		www/p5-Catalyst-Component-InstancePerContext \
		www/p5-Catalyst-Devel \
		www/p5-Catalyst-Runtime \
		www/p5-CatalystX-Component-Traits \
		databases/p5-DBIx-Class>=0.08114 \
		databases/p5-DBIx-Class-Cursor-Cached \
		databases/p5-DBIx-Class-Schema-Loader>=0.07012 \
		devel/p5-Hash-Merge \
		devel/p5-List-MoreUtils \
		devel/p5-Moose \
		devel/p5-MooseX-MarkAsMethods \
		devel/p5-MooseX-NonMoose \
		devel/p5-MooseX-Types \
		devel/p5-Tie-IxHash \
		devel/p5-Try-Tiny \
		devel/p5-namespace-autoclean \
		devel/p5-namespace-clean

TEST_DEPENDS=	databases/p5-DBD-SQLite \
		devel/p5-Test-Exception \
		devel/p5-Test-Requires

MAKE_ENV+=	TEST_POD=Yes \
		C_M_DBIC_SCHEMA_TESTAPP=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
