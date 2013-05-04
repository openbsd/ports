# $OpenBSD: Makefile,v 1.21 2013/05/04 10:33:55 sthen Exp $

COMMENT=	decentralized version control system

V=		2.2.1
REVISION=	2
DISTNAME=	SVK-v${V}
PKGNAME=	svk-${V}
CATEGORIES=	devel perl5

HOMEPAGE=	http://svk.elixus.org/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=../by-authors/id/C/CL/CLKAO/}

RUN_DEPENDS=	devel/p5-Algorithm-Annotate>=0.10 \
		devel/p5-App-CLI>=0.07 \
		devel/p5-Class-Autouse>=1.16 \
		devel/p5-Class-Data-Inheritable>=0.08 \
		devel/p5-Path-Class>=0.16 \
		devel/p5-Data-Hierarchy>=0.21 \
		devel/p5-File-Type>=0.22 \
		devel/p5-FreezeThaw>=0.43 \
		devel/p5-List-MoreUtils>=0.22 \
		devel/p5-Locale-Maketext-Lexicon>=0.47 \
		devel/p5-Log-Log4perl>=1.18 \
		archivers/p5-PerlIO-gzip>=0.18 \
		devel/p5-PerlIO-eol>=0.13 \
		devel/p5-IO-Digest>=0.10 \
		devel/p5-IO-Pager>=0.05 \
		devel/p5-PerlIO-via-Bzip2>=0.02 \
		devel/p5-PerlIO-via-symlink>=0.05 \
		devel/p5-SVN-Dump>=0.04 \
		devel/p5-SVN-Mirror>=0.70 \
		devel/p5-Time-Progress>=1.3 \
		devel/p5-Universal-require>=0.11 \
		devel/p5-YAML>=0.36 \
		devel/p5-YAML-Syck>=1.05 \
		www/p5-libwww
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

TEST_DEPENDS=devel/p5-BSD-Resource \
		devel/p5-Test-Pod

.include <bsd.port.mk>
