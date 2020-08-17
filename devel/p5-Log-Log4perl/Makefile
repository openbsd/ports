# $OpenBSD: Makefile,v 1.25 2020/08/17 01:47:44 afresh1 Exp $

COMMENT=	Log4j implementation for Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Log-Log4perl-1.50
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Log-Dispatch \
		devel/p5-Log-Dispatch-FileRotate \
		databases/p5-DBD-CSV \
		net/rrdtool \
		textproc/p5-XML-DOM

.include <bsd.port.mk>
