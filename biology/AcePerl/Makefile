#	$OpenBSD: Makefile,v 1.5 2008/09/23 20:57:20 jasper Exp $

COMMENT=	perl interface to the ACEDB database

DISTNAME=	AcePerl-1.91
CATEGORIES=	biology perl5 databases

FLAVORS=	opt
FLAVOR?=

# perl licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Ace/}

CONFIGURE_STYLE= perl
# we patch the Makefile.PL to allow us to set this simply
CONFIGURE_ENV+=	PERL_MM_USE_DEFAULT=Yes


# go through extra indirection to allow both flavors to share most files.
SUBST_VARS=	P5ACE

RUN_DEPENDS=	::devel/p5-Cache-Cache \
		::devel/p5-WeakRef

.if ${FLAVOR:L:Mopt}
SHARED_ONLY=Yes
CONFIGURE_ENV+=	CHOICE1=2
P5ACE=${P5ARCH}
WANTLIB=c
.else
PKG_ARCH=	*
CONFIGURE_ENV+= CHOICE1=1
P5ACE=${P5SITE}
.endif

CONFIGURE_ENV+= CHOICE2=n

.include <bsd.port.mk>
