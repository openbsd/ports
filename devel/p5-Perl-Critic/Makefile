# $OpenBSD: Makefile,v 1.12 2010/10/18 17:48:05 espie Exp $

COMMENT=	critique perl source code for best practices

MODULES=	cpan
DISTNAME=	Perl-Critic-1.108
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-B-Keywords \
		::devel/p5-Config-Tiny \
		:p5-Exception-Class->=1.23:devel/p5-Exception-Class \
		::devel/p5-File-HomeDir \
		:p5-PPI->=1.208:textproc/p5-PPI \
		::devel/p5-Readonly-XS \
		::devel/p5-Set-Scalar \
		::devel/p5-String-Format \
		::devel/p5-Readonly \
		::devel/perltidy \
		::mail/p5-Email-Address \
		::sysutils/p5-File-Which \
		::textproc/p5-PPIx-Regexp \
		::textproc/p5-PPIx-Utilities \
		::textproc/p5-Pod-Spell
REGRESS_DEPENDS=::devel/p5-PadWalker \
		::devel/p5-Test-Memory-Cycle

MAKE_ENV+=	TEST_POD=Yes

CONFIGURE_STYLE=modbuild

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
