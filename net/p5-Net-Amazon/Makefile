# $OpenBSD: Makefile,v 1.21 2019/07/12 20:48:36 sthen Exp $

COMMENT=		Perl Interface to Amazon.{co.uk,com} Web Services

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Net-Amazon-0.62
CATEGORIES=		net

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	textproc/p5-XML-Simple>=2.08 \
		devel/p5-Log-Log4perl \
		www/p5-libwww

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
