# $OpenBSD: Makefile,v 1.19 2016/03/20 19:56:51 naddy Exp $

COMMENT=		Perl Interface to Amazon.{co.uk,com} Web Services

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Net-Amazon-0.59
REVISION=		0
CATEGORIES=		net

MAINTAINER=		Sam Smith <s@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-XML-Simple>=2.08 \
		devel/p5-Log-Log4perl \
		www/p5-libwww

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
