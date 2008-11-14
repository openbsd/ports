# $OpenBSD: Makefile,v 1.14 2008/11/14 09:24:42 kevlo Exp $

COMMENT=	decentralized version control system

V=		2.2.1
DISTNAME=	SVK-v${V}
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

RUN_DEPENDS=	:p5-Algorithm-Annotate->=0.10:devel/p5-Algorithm-Annotate \
		:p5-App-CLI->=0.07:devel/p5-App-CLI \
		:p5-Class-Autouse->=1.16:devel/p5-Class-Autouse \
		:p5-Class-Data-Inheritable->=0.08:devel/p5-Class-Data-Inheritable \
		:p5-Path-Class->=0.16:devel/p5-Path-Class \
		:p5-Data-Hierarchy->=0.21:devel/p5-Data-Hierarchy \
		:p5-File-Type->=0.22:devel/p5-File-Type \
		:p5-FreezeThaw->=0.43:devel/p5-FreezeThaw \
		:p5-List-MoreUtils->=0.22:devel/p5-List-MoreUtils \
		:p5-Locale-Maketext-Lexicon->=0.47:devel/p5-Locale-Maketext-Lexicon \
		:p5-Log-Log4perl->=1.18:devel/p5-Log-Log4perl \
		:p5-PerlIO-gzip->=0.18:archivers/p5-PerlIO-gzip \
		:p5-PerlIO-eol->=0.13:devel/p5-PerlIO-eol \
		:p5-IO-Digest->=0.10:devel/p5-IO-Digest \
		:p5-IO-Pager->=0.05:devel/p5-IO-Pager \
		:p5-PerlIO-via-Bzip2->=0.02:devel/p5-PerlIO-via-Bzip2 \
		:p5-PerlIO-via-symlink->=0.05:devel/p5-PerlIO-via-symlink \
		:p5-SVN-Dump->=0.04:devel/p5-SVN-Dump \
		:p5-SVN-Mirror->=0.70:devel/p5-SVN-Mirror \
		:p5-Time-Progress->=1.3:devel/p5-Time-Progress \
		:p5-Universal-require->=0.11:devel/p5-Universal-require \
		:p5-YAML->=0.36:devel/p5-YAML \
		:p5-YAML-Syck->=1.05:devel/p5-YAML-Syck \
		::www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

REGRESS_DEPENDS=::devel/p5-BSD-Resource \
		::devel/p5-Test-Pod

.include <bsd.port.mk>
