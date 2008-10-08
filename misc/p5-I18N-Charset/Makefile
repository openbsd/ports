# $OpenBSD: Makefile,v 1.22 2008/10/08 17:49:03 jasper Exp $

COMMENT=	module to map charset names registered with IANA

MODULES=	cpan
DISTNAME=	I18N-Charset-1.394
CATEGORIES=	misc

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Jcode-*:converters/p5-Jcode \
		:p5-IO-String-*:devel/p5-IO-String \
		:p5-App-Info->=0.23:devel/p5-App-Info \
		:p5-IO-Capture->=0.03:devel/p5-IO-Capture

REGRESS_DEPENDS=:p5-Unicode-Map-*:converters/p5-Unicode-Map \
		:p5-Unicode-Map8-*:converters/p5-Unicode-Map8 \
		:p5-Unicode-MapUTF8-*:converters/p5-Unicode-MapUTF8 \
		:p5-IO-Capture-*:devel/p5-IO-Capture

.include <bsd.port.mk>
