# $OpenBSD: Makefile,v 1.22 2016/03/20 19:56:27 naddy Exp $

COMMENT=	Log4j implementation for Perl

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Log-Log4perl-1.40
CATEGORIES=	devel
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=   Yes

TEST_DEPENDS=	devel/p5-Log-Dispatch \
		devel/p5-Log-Dispatch-FileRotate \
		databases/p5-DBD-CSV \
		net/rrdtool,-perl \
		textproc/p5-XML-DOM

.include <bsd.port.mk>
