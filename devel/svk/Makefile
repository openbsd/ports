# $OpenBSD: Makefile,v 1.7 2006/05/01 08:40:46 kevlo Exp $

COMMENT=	"decentralized version control system"

V=		1.07
DISTNAME=	SVK-${V}
PKGNAME=	svk-${V}
CATEGORIES=	devel perl5

HOMEPAGE=	http://svk.elixus.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/C/CL/CLKAO/}

BUILD_DEPENDS=	:p5-Compress-Zlib->=1.34:archivers/p5-Compress-Zlib \
		:p5-Algorithm-Annotate->=0.10:devel/p5-Algorithm-Annotate \
		:p5-Class-Autouse->=1.16:devel/p5-Class-Autouse \
		:p5-Data-Hierarchy->=0.21:devel/p5-Data-Hierarchy \
		:p5-File-Type->=0.22:devel/p5-File-Type \
		:p5-FreezeThaw->=0.43:devel/p5-FreezeThaw \
		:p5-Locale-Maketext-Lexicon->=0.45:devel/p5-Locale-Maketext-Lexicon \
		:p5-Locale-Maketext-Simple->=0.12:devel/p5-Locale-Maketext-Simple \
		:p5-PerlIO-eol->=0.13:devel/p5-PerlIO-eol \
		:p5-IO-Digest->=0.10:devel/p5-IO-Digest \
		:p5-IO-Pager->=0.05:devel/p5-IO-Pager \
		:p5-PerlIO-via-symlink->=0.05:devel/p5-PerlIO-via-symlink \
		:p5-SVN-Mirror->=0.68:devel/p5-SVN-Mirror \
		:p5-YAML->=0.36:devel/p5-YAML \
		:p5-Pod-Simple->=3.02:textproc/p5-Pod-Simple
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
