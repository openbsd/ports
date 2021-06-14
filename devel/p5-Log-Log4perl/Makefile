# $OpenBSD: Makefile,v 1.26 2021/06/14 19:59:01 sthen Exp $

COMMENT=	Log4j implementation for Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Log-Log4perl-1.54
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Log-Dispatch \
		devel/p5-Log-Dispatch-FileRotate \
		databases/p5-DBD-CSV \
		net/rrdtool \
		textproc/p5-XML-DOM

.include <bsd.port.mk>
