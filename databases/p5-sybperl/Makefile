COMMENT=	Sybase database access in Perl

DISTNAME=	sybperl-2.20
EXTRACT_SUFX=	.tgz

CATEGORIES=	databases perl5

HOMEPAGE=	https://github.com/mpeppler/sybperl

# perl
PERMIT_PACKAGE=	Yes

WANTLIB +=	c iconv intl m perl sybdb>=5 ct>=3

MODULES=	cpan
CPAN_AUTHOR=	MEWP

LIB_DEPENDS=	databases/freetds

CONFIGURE_ENV=	SYBASE="${LOCALBASE}"

TEST_IS_INTERACTIVE=	Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CFLAGS_base-clang =	-Wno-error=int-conversion
CONFIGURE_ARGS +=	CCFLAGS="${OCFLAGS} ${CFLAGS}"
PCFLAGS:=		$(/usr/bin/perl -V:ccflags | cut -d '='  -f2`)
.endif

.include <bsd.port.mk>
