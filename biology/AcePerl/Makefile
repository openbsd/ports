#	$OpenBSD: Makefile,v 1.22 2020/07/03 21:44:31 sthen Exp $

COMMENT=	perl interface to the ACEDB database

DISTNAME=	AcePerl-1.92
PKGNAME=	${DISTNAME}# No p5-prefix
REVISION=	3
CATEGORIES=	biology databases

FLAVORS=	opt
FLAVOR?=

# perl licence
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Ace/}

# we patch the Makefile.PL to allow us to set this simply
CONFIGURE_ENV+=	PERL_MM_USE_DEFAULT=Yes

MODULES=	cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIR=	${PREFIX}/share/examples/AcePerl/

# go through extra indirection to allow both flavors to share most files.
SUBST_VARS=	P5ACE

RUN_DEPENDS=	devel/p5-Cache-Cache \
		devel/p5-WeakRef \
		www/p5-CGI

.if ${FLAVOR:Mopt}
CONFIGURE_ENV+=	CHOICE1=2
P5ACE=${P5ARCH}
WANTLIB=c perl
.else
PKG_ARCH= *
CONFIGURE_ENV+= CHOICE1=1
P5ACE=${P5SITE}
.endif

CONFIGURE_ENV+= CHOICE2=n

.include <bsd.port.mk>
