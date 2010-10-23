# $OpenBSD: Makefile,v 1.14 2010/10/23 09:35:20 jasper Exp $

COMMENT=		Perl Interface to Amazon.{co.uk,com} Web Services

MODULES=		cpan
DISTNAME=		Net-Amazon-0.59
CATEGORIES=		net
USE_GROFF =	Yes

MAINTAINER=		Sam Smith <s@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-XML-Simple->=2.08:textproc/p5-XML-Simple \
		::devel/p5-Log-Log4perl \
		:p5-libwww-*:www/p5-libwww

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

.include <bsd.port.mk>
