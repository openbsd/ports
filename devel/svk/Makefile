# $OpenBSD: Makefile,v 1.16 2010/11/15 19:46:09 espie Exp $

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

RUN_DEPENDS=	STEM->=0.10:devel/p5-Algorithm-Annotate \
		STEM->=0.07:devel/p5-App-CLI \
		STEM->=1.16:devel/p5-Class-Autouse \
		STEM->=0.08:devel/p5-Class-Data-Inheritable \
		STEM->=0.16:devel/p5-Path-Class \
		STEM->=0.21:devel/p5-Data-Hierarchy \
		STEM->=0.22:devel/p5-File-Type \
		STEM->=0.43:devel/p5-FreezeThaw \
		STEM->=0.22:devel/p5-List-MoreUtils \
		STEM->=0.47:devel/p5-Locale-Maketext-Lexicon \
		STEM->=1.18:devel/p5-Log-Log4perl \
		STEM->=0.18:archivers/p5-PerlIO-gzip \
		STEM->=0.13:devel/p5-PerlIO-eol \
		STEM->=0.10:devel/p5-IO-Digest \
		STEM->=0.05:devel/p5-IO-Pager \
		STEM->=0.02:devel/p5-PerlIO-via-Bzip2 \
		STEM->=0.05:devel/p5-PerlIO-via-symlink \
		STEM->=0.04:devel/p5-SVN-Dump \
		STEM->=0.70:devel/p5-SVN-Mirror \
		STEM->=1.3:devel/p5-Time-Progress \
		STEM->=0.11:devel/p5-Universal-require \
		STEM->=0.36:devel/p5-YAML \
		STEM->=1.05:devel/p5-YAML-Syck \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

REGRESS_DEPENDS=devel/p5-BSD-Resource \
		devel/p5-Test-Pod

.include <bsd.port.mk>
